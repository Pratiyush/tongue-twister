import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/twister.dart';
import '../providers/favorites_provider.dart';
import '../providers/practice_provider.dart';
import '../providers/speech_provider.dart';
import '../widgets/difficulty_badge.dart';
import '../widgets/speak_button.dart';

/// Full-screen practice view; swipe left and right through [twisters].
class TwisterDetailScreen extends ConsumerStatefulWidget {
  const TwisterDetailScreen({
    super.key,
    required this.twisters,
    this.initialIndex = 0,
  });

  final List<Twister> twisters;
  final int initialIndex;

  @override
  ConsumerState<TwisterDetailScreen> createState() =>
      _TwisterDetailScreenState();
}

class _TwisterDetailScreenState extends ConsumerState<TwisterDetailScreen> {
  late final PageController _pageController;
  late int _index;

  Twister get _current => widget.twisters[_index];

  @override
  void initState() {
    super.initState();
    _index = widget.initialIndex;
    _pageController = PageController(initialPage: _index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    ref.read(speechControllerProvider.notifier).stop();
    setState(() => _index = index);
  }

  void _recordAttempt() {
    ref.read(practiceProvider.notifier).recordAttempt(_current.id);
    final count = ref.read(practiceProvider)[_current.id] ?? 0;
    final message = switch (count) {
      1 => 'First try logged. Now say it faster!',
      3 => 'Three times! Your tongue is warming up.',
      10 => 'Ten times. You have mastered this one!',
      _ => 'Nice! Practised $count times.',
    };
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(message), duration: const Duration(seconds: 2)),
      );
  }

  @override
  Widget build(BuildContext context) {
    final twister = _current;
    final isFavorite = ref.watch(
      favoritesProvider.select((ids) => ids.contains(twister.id)),
    );

    return PopScope(
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) ref.read(speechControllerProvider.notifier).stop();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('${twister.section.flag}  ${twister.section.title}'),
          actions: [
            IconButton(
              tooltip: isFavorite
                  ? 'Remove from favourites'
                  : 'Add to favourites',
              icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
              color: isFavorite ? Theme.of(context).colorScheme.error : null,
              onPressed: () =>
                  ref.read(favoritesProvider.notifier).toggle(twister.id),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: widget.twisters.length,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) =>
                    _TwisterPage(twister: widget.twisters[index]),
              ),
            ),
            if (widget.twisters.length > 1)
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  '${_index + 1} / ${widget.twisters.length} · swipe for more',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            _PracticeControls(twister: twister, onSaidIt: _recordAttempt),
          ],
        ),
      ),
    );
  }
}

class _TwisterPage extends ConsumerWidget {
  const _TwisterPage({required this.twister});

  final Twister twister;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final practiced = ref.watch(
      practiceProvider.select((c) => c[twister.id] ?? 0),
    );

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              DifficultyBadge(twister.difficulty),
              const Spacer(),
              if (practiced > 0)
                Text(
                  'Practised $practiced×',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 24),
          SelectableText(
            twister.text,
            style: theme.textTheme.headlineSmall?.copyWith(height: 1.4),
          ),
          if (twister.transliteration != null) ...[
            const SizedBox(height: 16),
            _LabeledText(
              label: 'Pronunciation',
              text: twister.transliteration!,
            ),
          ],
          if (twister.translation != null) ...[
            const SizedBox(height: 16),
            _LabeledText(label: 'Meaning', text: twister.translation!),
          ],
          if (twister.tip != null) ...[
            const SizedBox(height: 24),
            Card(
              color: theme.colorScheme.surfaceContainerHighest,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.lightbulb_outline,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 12),
                    Expanded(child: Text(twister.tip!)),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _LabeledText extends StatelessWidget {
  const _LabeledText({required this.label, required this.text});

  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 4),
        Text(text, style: theme.textTheme.bodyLarge),
      ],
    );
  }
}

class _PracticeControls extends ConsumerWidget {
  const _PracticeControls({required this.twister, required this.onSaidIt});

  final Twister twister;
  final VoidCallback onSaidIt;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final speech = ref.watch(speechControllerProvider);
    final speaking = speech.isSpeaking(twister.id);

    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
        child: Column(
          children: [
            SegmentedButton<PlaybackSpeed>(
              segments: [
                for (final speed in PlaybackSpeed.values)
                  ButtonSegment(value: speed, label: Text(speed.label)),
              ],
              selected: {speech.speed},
              showSelectedIcon: false,
              onSelectionChanged: (selection) => ref
                  .read(speechControllerProvider.notifier)
                  .setSpeed(selection.first),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () => speakTwister(context, ref, twister),
                    icon: Icon(speaking ? Icons.stop : Icons.volume_up),
                    label: Text(speaking ? 'Stop' : 'Listen'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: speaking
                        ? null
                        : () => speakTwister(context, ref, twister, times: 3),
                    icon: const Icon(Icons.repeat),
                    label: const Text('3× in a row'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: FilledButton.tonalIcon(
                onPressed: onSaidIt,
                icon: const Icon(Icons.record_voice_over),
                label: const Text('I said it!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
