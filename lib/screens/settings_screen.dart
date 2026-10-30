import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../ads/ads.dart';
import '../l10n/app_localizations.dart';
import '../l10n/l10n_ext.dart';
import '../l10n/languages.dart';
import '../models/language_section.dart';
import '../providers/favorites_provider.dart';
import '../providers/practice_provider.dart';
import '../providers/settings_provider.dart';
import '../providers/speech_provider.dart';
import 'language_screen.dart';

const appVersion = '1.0.0';

/// The developer's name in the credit line ("Made with ❤️ by …", the
/// `appCredit` ARB key). A name, so it is never translated.
const appCreditName = 'Pratiyush Kumar Singh';

/// A short phrase spoken (not shown) to test each language's voice; it is
/// in the voice's own language, so it is never translated.
String _sampleFor(LanguageSection section) => switch (section) {
  LanguageSection.englishUK => 'Hello! Red lorry, yellow lorry.',
  LanguageSection.englishUS => 'Hi there! Toy boat, toy boat.',
  LanguageSection.hindi => 'नमस्ते! कच्चा पापड़, पक्का पापड़।',
  LanguageSection.german => 'Hallo! Fischers Fritz fischt frische Fische.',
};

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  Future<bool> _confirm(BuildContext context, String title, String body) async {
    final l = AppLocalizations.of(context);
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(body),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l.dialogCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l.dialogClear),
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
    final l = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(l.settingsTitle)),
      body: ListView(
        padding: EdgeInsets.only(
          bottom: 24 + MediaQuery.paddingOf(context).bottom,
        ),
        children: [
          Builder(
            builder: (context) {
              final tag = settings.language;
              final picked = tag == null ? null : languageForTag(tag);
              return ListTile(
                leading: const Icon(Icons.translate),
                title: Text(l.settingsLanguage),
                subtitle: Text(
                  picked == null
                      ? l.languageSystemDefault
                      : '${picked.flag} ${picked.name}',
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => const LanguageScreen(),
                  ),
                ),
              );
            },
          ),
          _Header(l.settingsAppearance),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SegmentedButton<ThemeMode>(
              segments: [
                ButtonSegment(
                  value: ThemeMode.system,
                  icon: const Icon(Icons.brightness_auto),
                  label: Text(l.themeSystem),
                ),
                ButtonSegment(
                  value: ThemeMode.light,
                  icon: const Icon(Icons.light_mode),
                  label: Text(l.themeLight),
                ),
                ButtonSegment(
                  value: ThemeMode.dark,
                  icon: const Icon(Icons.dark_mode),
                  label: Text(l.themeDark),
                ),
              ],
              selected: {settings.themeMode},
              onSelectionChanged: (s) => notifier.setThemeMode(s.first),
            ),
          ),

          _Header(l.settingsLanguages),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
            child: Text(
              l.settingsLanguagesHelp,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          for (final section in LanguageSection.values)
            CheckboxListTile(
              secondary: Text(
                section.flag,
                style: const TextStyle(fontSize: 28),
              ),
              title: Text(section.title(l)),
              subtitle: Text(section.subtitle(l)),
              value: settings.isVisible(section),
              // The last visible language can't be hidden.
              onChanged:
                  settings.isVisible(section) &&
                      settings.hiddenSections.length ==
                          LanguageSection.values.length - 1
                  ? null
                  : (on) => notifier.setSectionVisible(section, on ?? true),
            ),

          _Header(l.settingsPlayback),
          ListTile(
            title: Text(l.settingsSpeakingSpeed),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: SegmentedButton<PlaybackSpeed>(
                segments: [
                  for (final speed in PlaybackSpeed.values)
                    ButtonSegment(value: speed, label: Text(speed.label(l))),
                ],
                selected: {settings.speed},
                showSelectedIcon: false,
                onSelectionChanged: (s) => notifier.setSpeed(s.first),
              ),
            ),
          ),
          ListTile(
            title: Text(l.settingsRepeatChallenge),
            subtitle: Text(l.settingsRepeatSubtitle(settings.repeatCount)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  tooltip: l.fewerRepeats,
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: settings.repeatCount > AppSettings.minRepeats
                      ? () => notifier.setRepeatCount(settings.repeatCount - 1)
                      : null,
                ),
                Text(
                  l.repeatCountValue(settings.repeatCount),
                  style: theme.textTheme.titleMedium,
                ),
                IconButton(
                  tooltip: l.moreRepeats,
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: settings.repeatCount < AppSettings.maxRepeats
                      ? () => notifier.setRepeatCount(settings.repeatCount + 1)
                      : null,
                ),
              ],
            ),
          ),

          _Header(l.settingsDisplay),
          SwitchListTile(
            title: Text(l.showPronunciation),
            subtitle: Text(l.showPronunciationHelp),
            value: settings.showPronunciation,
            onChanged: notifier.setShowPronunciation,
          ),
          SwitchListTile(
            title: Text(l.showMeaning),
            subtitle: Text(l.showMeaningHelp),
            value: settings.showMeaning,
            onChanged: notifier.setShowMeaning,
          ),

          _Header(l.settingsVoices),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Text(
              l.settingsVoicesHelp,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          for (final section in LanguageSection.values)
            if (settings.isVisible(section)) _VoiceTile(section: section),

          _Header(l.settingsYourData),
          ListTile(
            leading: const Icon(Icons.restart_alt),
            title: Text(l.resetProgress),
            onTap: () async {
              final ok = await _confirm(
                context,
                l.resetProgressTitle,
                l.resetProgressBody,
              );
              if (!ok) return;
              ref.read(practiceProvider.notifier).clearAll();
              if (context.mounted) _toast(context, l.resetProgressDone);
            },
          ),
          ListTile(
            leading: const Icon(Icons.heart_broken_outlined),
            title: Text(l.clearFavourites),
            onTap: () async {
              final ok = await _confirm(
                context,
                l.clearFavouritesTitle,
                l.clearFavouritesBody,
              );
              if (!ok) return;
              ref.read(favoritesProvider.notifier).clearAll();
              if (context.mounted) _toast(context, l.clearFavouritesDone);
            },
          ),

          _Header(l.settingsAbout),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: Text(l.appTitle),
            subtitle: Text(
              [
                l.aboutVersion(appVersion),
                l.appCredit(appCreditName),
              ].join('\n'),
            ),
            isThreeLine: true,
            onTap: () => showLicensePage(
              context: context,
              applicationName: l.appTitle,
              applicationVersion: appVersion,
              applicationLegalese: l.appCredit(appCreditName),
            ),
          ),
          // Required by Google's consent rules wherever consent applies
          // (EEA, UK, Switzerland).
          if (ref.watch(privacyOptionsRequiredProvider).value ?? false)
            ListTile(
              leading: const Icon(Icons.privacy_tip_outlined),
              title: Text(l.privacyChoices),
              subtitle: Text(l.privacyChoicesHelp),
              onTap: showPrivacyOptions,
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
    final l = AppLocalizations.of(context);

    final (icon, color, status) = switch (available) {
      AsyncData(value: true) => (
        Icons.check_circle,
        scheme.primary,
        l.voiceInstalled,
      ),
      AsyncData(value: false) => (
        Icons.error_outline,
        scheme.error,
        l.voiceNotInstalled,
      ),
      AsyncError() => (Icons.help_outline, scheme.outline, l.voiceUnknown),
      _ => (Icons.hourglass_empty, scheme.outline, l.voiceChecking),
    };

    return ListTile(
      leading: Text(section.flag, style: const TextStyle(fontSize: 28)),
      title: Text(section.title(l)),
      subtitle: Row(
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              l.voiceStatusLine(section.ttsLocale, status),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      trailing: IconButton(
        tooltip: speaking ? l.actionStop : l.testVoice(section.shortLabel(l)),
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
