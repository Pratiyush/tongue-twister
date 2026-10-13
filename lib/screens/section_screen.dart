import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    final section = widget.section;
    final visible = _filter(ref.watch(sectionTwistersProvider(section)));

    return SectionTheme(
      section: section,
      child: Scaffold(
        appBar: SectionAppBar(section: section),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search twisters',
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
                    label: const Text('All'),
                    selected: _difficulty == null,
                    onSelected: (_) => setState(() => _difficulty = null),
                  ),
                  for (final level in Difficulty.values) ...[
                    const SizedBox(width: 8),
                    ChoiceChip(
                      label: Text(level.label),
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
                  ? const Center(child: Text('No twisters match.'))
                  : ListView.builder(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 24),
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
