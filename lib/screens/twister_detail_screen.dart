import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../ads/interstitial.dart';
import '../l10n/app_localizations.dart';
import '../l10n/l10n_ext.dart';
import '../models/twister.dart';
import '../providers/favorites_provider.dart';
import '../providers/practice_provider.dart';
import '../providers/settings_provider.dart';
import '../providers/speech_provider.dart';
import '../theme/app_theme.dart';
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
    ref.read(interstitialProvider.notifier).onPractised();
    final count = ref.read(practiceProvider)[_current.id] ?? 0;
    final l = AppLocalizations.of(context);
    final message = switch (count) {
      1 => l.practiseFirstTry,
      3 => l.practiseThreeTimes,
      10 => l.practiseTenTimes,
      _ => l.practisedCountToast(count),
    };
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(message), duration: const Duration(seconds: 2)),
      );
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final twister = _current;
    final isFavorite = ref.watch(
      favoritesProvider.select((ids) => ids.contains(twister.id)),
    );

    return PopScope(
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) return;
        ref.read(speechControllerProvider.notifier).stop();
        ref.read(interstitialProvider.notifier).onLeftPractice();
      },
      child: SectionTheme(
        section: twister.section,
        child: Scaffold(
          appBar: SectionAppBar(
            section: twister.section,
            actions: [
              IconButton(
                tooltip: isFavorite
                    ? l.removeFromFavourites
                    : l.addToFavourites,
                icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
                color: isFavorite ? AppColors.favorite : null,
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
                    l.pagerSwipeHint(_index + 1, widget.twisters.length),
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              _PracticeControls(twister: twister, onSaidIt: _recordAttempt),
            ],
          ),
        ),
      ),
    );
  }
}

class _TwisterPage extends ConsumerStatefulWidget {
  const _TwisterPage({required this.twister});

  final Twister twister;

  @override
  ConsumerState<_TwisterPage> createState() => _TwisterPageState();
}

class _TwisterPageState extends ConsumerState<_TwisterPage> {
  // Long twisters push the tip below the fold; a visible scrollbar shows
  // there is more to read.
  final _scroll = ScrollController();

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final twister = widget.twister;
    final theme = Theme.of(context);
    final practiced = ref.watch(
      practiceProvider.select((c) => c[twister.id] ?? 0),
    );
    final settings = ref.watch(settingsProvider);

    // The bottom edge fades so text running past it reads as "scroll for
    // more" rather than cut off.
    return ShaderMask(
      blendMode: BlendMode.dstIn,
      shaderCallback: (bounds) => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.black, Colors.black, Colors.transparent],
        stops: [0, 0.92, 1],
      ).createShader(bounds),
      child: Scrollbar(
        controller: _scroll,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: _scroll,
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
                      l.practisedTimes(practiced),
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 22),
                decoration: BoxDecoration(
                  gradient: twister.section.headerGradient,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.format_quote_rounded,
                      size: 36,
                      color: twister.section.accent,
                    ),
                    const SizedBox(height: 4),
                    SelectableText(
                      twister.text,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        height: 1.4,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              if (settings.showPronunciation &&
                  twister.transliteration != null) ...[
                const SizedBox(height: 16),
                _LabeledText(
                  label: l.pronunciationLabel,
                  text: twister.transliteration!,
                ),
              ],
              if (settings.showMeaning && twister.translation != null) ...[
                const SizedBox(height: 16),
                _LabeledText(label: l.meaningLabel, text: twister.translation!),
              ],
              if (twister.tip != null) ...[
                const SizedBox(height: 24),
                Card(
                  color: theme.colorScheme.primaryContainer.withValues(
                    alpha: 0.5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
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
                        Expanded(
                          child: Text(
                            twister.tip!,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
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
    final speaking = ref.watch(
      speechControllerProvider.select((s) => s.isSpeaking(twister.id)),
    );
    final l = AppLocalizations.of(context);
    final settings = ref.watch(settingsProvider);
    final (successBackground, successForeground) = AppColors.success(
      Theme.of(context).brightness,
    );

    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
        child: Column(
          children: [
            SegmentedButton<PlaybackSpeed>(
              segments: [
                for (final speed in PlaybackSpeed.values)
                  ButtonSegment(value: speed, label: Text(speed.label(l))),
              ],
              selected: {settings.speed},
              showSelectedIcon: false,
              onSelectionChanged: (selection) =>
                  ref.read(settingsProvider.notifier).setSpeed(selection.first),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () => speakTwister(context, ref, twister),
                    icon: Icon(speaking ? Icons.stop : Icons.volume_up),
                    label: Text(speaking ? l.actionStop : l.actionListen),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: speaking
                        ? null
                        : () => speakTwister(
                            context,
                            ref,
                            twister,
                            times: settings.repeatCount,
                          ),
                    icon: const Icon(Icons.repeat),
                    label: Text(l.repeatInARow(settings.repeatCount)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                style: FilledButton.styleFrom(
                  backgroundColor: successBackground,
                  foregroundColor: successForeground,
                ),
                onPressed: onSaidIt,
                icon: const Icon(Icons.check_circle_outline),
                label: Text(l.saidIt),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
