import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/language_section.dart';
import '../providers/favorites_provider.dart';
import '../providers/practice_provider.dart';
import '../providers/settings_provider.dart';
import '../providers/speech_provider.dart';

const appVersion = '1.0.0';
const appCredit = 'Made with ❤️ by Pratiyush Kumar Singh';

/// A short phrase used to test each language's voice.
String _sampleFor(LanguageSection section) => switch (section) {
  LanguageSection.englishUK => 'Hello! Red lorry, yellow lorry.',
  LanguageSection.englishUS => 'Hi there! Toy boat, toy boat.',
  LanguageSection.hindi => 'नमस्ते! कच्चा पापड़, पक्का पापड़।',
  LanguageSection.german => 'Hallo! Fischers Fritz fischt frische Fische.',
};

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  Future<bool> _confirm(BuildContext context, String title, String body) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(body),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Clear'),
          ),
        ],
      ),
    );
    return result ?? false;
  }

  void _toast(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final notifier = ref.read(settingsProvider.notifier);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          const _Header('Appearance'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SegmentedButton<ThemeMode>(
              segments: const [
                ButtonSegment(
                  value: ThemeMode.system,
                  icon: Icon(Icons.brightness_auto),
                  label: Text('System'),
                ),
                ButtonSegment(
                  value: ThemeMode.light,
                  icon: Icon(Icons.light_mode),
                  label: Text('Light'),
                ),
                ButtonSegment(
                  value: ThemeMode.dark,
                  icon: Icon(Icons.dark_mode),
                  label: Text('Dark'),
                ),
              ],
              selected: {settings.themeMode},
              onSelectionChanged: (s) => notifier.setThemeMode(s.first),
            ),
          ),

          const _Header('Playback'),
          ListTile(
            title: const Text('Speaking speed'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: SegmentedButton<PlaybackSpeed>(
                segments: [
                  for (final speed in PlaybackSpeed.values)
                    ButtonSegment(value: speed, label: Text(speed.label)),
                ],
                selected: {settings.speed},
                showSelectedIcon: false,
                onSelectionChanged: (s) => notifier.setSpeed(s.first),
              ),
            ),
          ),
          ListTile(
            title: const Text('Repeat challenge'),
            subtitle: Text(
              'Plays a twister ${settings.repeatCount} times in a row',
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  tooltip: 'Fewer repeats',
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: settings.repeatCount > AppSettings.minRepeats
                      ? () => notifier.setRepeatCount(settings.repeatCount - 1)
                      : null,
                ),
                Text(
                  '${settings.repeatCount}×',
                  style: theme.textTheme.titleMedium,
                ),
                IconButton(
                  tooltip: 'More repeats',
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: settings.repeatCount < AppSettings.maxRepeats
                      ? () => notifier.setRepeatCount(settings.repeatCount + 1)
                      : null,
                ),
              ],
            ),
          ),

          const _Header('Display'),
          SwitchListTile(
            title: const Text('Show pronunciation'),
            subtitle: const Text('Romanised text under Hindi twisters'),
            value: settings.showPronunciation,
            onChanged: notifier.setShowPronunciation,
          ),
          SwitchListTile(
            title: const Text('Show meaning'),
            subtitle: const Text('English translation for Hindi and German'),
            value: settings.showMeaning,
            onChanged: notifier.setShowMeaning,
          ),

          const _Header('Voices'),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Text(
              'Twisters are read by your phone\'s text-to-speech voices. '
              'If a language is missing, install it in your system settings '
              '(Android: Settings → System → Languages → Text-to-speech; '
              'iOS: Settings → Accessibility → Spoken Content → Voices).',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          for (final section in LanguageSection.values)
            _VoiceTile(section: section),

          const _Header('Your data'),
          ListTile(
            leading: const Icon(Icons.restart_alt),
            title: const Text('Reset practice progress'),
            onTap: () async {
              final ok = await _confirm(
                context,
                'Reset progress?',
                'All practice counts will be set back to zero.',
              );
              if (!ok) return;
              ref.read(practiceProvider.notifier).clearAll();
              if (context.mounted) _toast(context, 'Practice progress reset');
            },
          ),
          ListTile(
            leading: const Icon(Icons.heart_broken_outlined),
            title: const Text('Clear favourites'),
            onTap: () async {
              final ok = await _confirm(
                context,
                'Clear favourites?',
                'All twisters will be removed from your favourites.',
              );
              if (!ok) return;
              ref.read(favoritesProvider.notifier).clearAll();
              if (context.mounted) _toast(context, 'Favourites cleared');
            },
          ),

          const _Header('About'),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Tongue Twisters'),
            subtitle: const Text('Version $appVersion\n$appCredit'),
            isThreeLine: true,
            onTap: () => showLicensePage(
              context: context,
              applicationName: 'Tongue Twisters',
              applicationVersion: appVersion,
              applicationLegalese: appCredit,
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Text(
        title,
        style: theme.textTheme.titleSmall?.copyWith(
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}

class _VoiceTile extends ConsumerWidget {
  const _VoiceTile({required this.section});

  final LanguageSection section;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final available = ref.watch(voiceAvailableProvider(section.ttsLocale));
    final testId = 'voice-test-${section.id}';
    final speaking = ref.watch(
      speechControllerProvider.select((s) => s.isSpeaking(testId)),
    );
    final scheme = Theme.of(context).colorScheme;

    final (icon, color, status) = switch (available) {
      AsyncData(value: true) => (
        Icons.check_circle,
        scheme.primary,
        'Installed',
      ),
      AsyncData(value: false) => (
        Icons.error_outline,
        scheme.error,
        'Not installed',
      ),
      AsyncError() => (Icons.help_outline, scheme.outline, 'Unknown'),
      _ => (Icons.hourglass_empty, scheme.outline, 'Checking…'),
    };

    return ListTile(
      leading: Text(section.flag, style: const TextStyle(fontSize: 28)),
      title: Text(section.title),
      subtitle: Row(
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              '${section.ttsLocale} · $status',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      trailing: IconButton(
        tooltip: speaking ? 'Stop' : 'Test ${section.shortLabel} voice',
        icon: Icon(
          speaking ? Icons.stop_circle_outlined : Icons.play_circle_outline,
        ),
        onPressed: () {
          final controller = ref.read(speechControllerProvider.notifier);
          if (speaking) {
            controller.stop();
          } else {
            controller.speakText(
              testId,
              _sampleFor(section),
              section.ttsLocale,
            );
          }
        },
      ),
    );
  }
}
