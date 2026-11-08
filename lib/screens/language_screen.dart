import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../l10n/app_localizations.dart';
import '../l10n/languages.dart';
import '../providers/settings_provider.dart';

/// Settings → App language: "System default" first, then every translated
/// language by its own name, with a search box.
class LanguageScreen extends ConsumerStatefulWidget {
  const LanguageScreen({super.key});

  @override
  ConsumerState<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends ConsumerState<LanguageScreen> {
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final picked = ref.watch(settingsProvider.select((s) => s.language));
    final notifier = ref.read(settingsProvider.notifier);
    final device = languageFor(
      resolveLocale(WidgetsBinding.instance.platformDispatcher.locales),
    );
    final shown = [
      for (final language in availableLanguages)
        if (language.matches(_query)) language,
    ];
    final check = Icon(
      Icons.check,
      color: Theme.of(context).colorScheme.primary,
    );

    return Scaffold(
      appBar: AppBar(title: Text(l.settingsLanguage)),
      body: ListView(
        padding: EdgeInsets.only(
          bottom: 24 + MediaQuery.paddingOf(context).bottom,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: l.languageSearchHint,
                border: const OutlineInputBorder(),
                isDense: true,
              ),
              onChanged: (value) => setState(() => _query = value),
            ),
          ),
          if (_query.trim().isEmpty)
            Semantics(
              selected: picked == null,
              child: ListTile(
                leading: const Icon(Icons.phone_android, size: 28),
                title: Text(l.languageSystemDefault),
                subtitle: device == null
                    ? null
                    : Text(
                        l.languageFollowsDevice(
                          '${device.flag} ${device.name}',
                        ),
                      ),
                trailing: picked == null ? check : null,
                onTap: () => notifier.setLanguage(null),
              ),
            ),
          for (final language in shown)
            Semantics(
              selected: picked == language.tag,
              child: ListTile(
                leading: ExcludeSemantics(
                  child: Text(
                    language.flag,
                    style: const TextStyle(fontSize: 28),
                  ),
                ),
                title: Text(language.name),
                trailing: picked == language.tag ? check : null,
                onTap: () => notifier.setLanguage(language.tag),
              ),
            ),
        ],
      ),
    );
  }
}
