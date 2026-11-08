import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../ads/ads.dart';
import '../l10n/app_localizations.dart';
import '../l10n/l10n_ext.dart';
import '../models/language_section.dart';
import '../models/twister.dart';
import '../providers/twister_providers.dart';
import '../theme/app_theme.dart';
import '../widgets/twister_card.dart';
import 'twister_detail_screen.dart';

class SectionScreen extends ConsumerStatefulWidget {
  const SectionScreen({super.key, required this.section});

  final LanguageSection section;

  @override
  ConsumerState<SectionScreen> createState() => _SectionScreenState();
}

class _SectionScreenState extends ConsumerState<SectionScreen> {
  String _query = '';
  Difficulty? _difficulty;

  List<Twister> _filter(List<Twister> twisters) {
    final query = _query.trim().toLowerCase();
    return twisters.where((t) {
      if (_difficulty != null && t.difficulty != _difficulty) return false;
      if (query.isEmpty) return true;
      return [
        t.text,
        t.transliteration,
        t.translation,
      ].whereType<String>().any((field) => field.toLowerCase().contains(query));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final section = widget.section;
    final visible = _filter(ref.watch(sectionTwistersProvider(section)));

    return SectionTheme(
      section: section,
      child: Scaffold(
        bottomNavigationBar: ref.watch(adsSupportedProvider)
            ? const BannerAdBar()
            : null,
        appBar: SectionAppBar(section: section),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: l.searchTwistersHint,
                  isDense: true,
                ),
                onChanged: (value) => setState(() => _query = value),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  ChoiceChip(
                    label: Text(l.filterAll),
                    selected: _difficulty == null,
                    onSelected: (_) => setState(() => _difficulty = null),
                  ),
                  for (final level in Difficulty.values) ...[
                    const SizedBox(width: 8),
                    ChoiceChip(
                      label: Text(level.label(l)),
                      selected: _difficulty == level,
                      onSelected: (selected) =>
                          setState(() => _difficulty = selected ? level : null),
                    ),
                  ],
                ],
              ),
            ),
            Expanded(
              child: visible.isEmpty
                  ? Center(child: Text(l.noTwistersMatch))
                  : ListView.builder(
                      padding: EdgeInsets.fromLTRB(
                        12,
                        0,
                        12,
                        24 + MediaQuery.paddingOf(context).bottom,
                      ),
                      itemCount: visible.length,
                      itemBuilder: (context, index) => TwisterCard(
                        twister: visible[index],
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => TwisterDetailScreen(
                              twisters: visible,
                              initialIndex: index,
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
