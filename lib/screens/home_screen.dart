import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/language_section.dart';
import '../providers/practice_provider.dart';
import '../providers/twister_providers.dart';
import 'favorites_screen.dart';
import 'section_screen.dart';
import 'settings_screen.dart';
import 'twister_detail_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void _openRandom(BuildContext context, WidgetRef ref) {
    final all = ref.read(allTwistersProvider);
    final pick = all[Random().nextInt(all.length)];
    final sectionList = ref.read(sectionTwistersProvider(pick.section));
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => TwisterDetailScreen(
          twisters: sectionList,
          initialIndex: sectionList.indexOf(pick),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tongue Twisters'),
        actions: [
          IconButton(
            tooltip: 'Favourites',
            icon: const Icon(Icons.favorite_outline),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute<void>(builder: (_) => const FavoritesScreen()),
            ),
          ),
          IconButton(
            tooltip: 'Settings',
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute<void>(builder: (_) => const SettingsScreen()),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _openRandom(context, ref),
        icon: const Icon(Icons.shuffle),
        label: const Text('Surprise me'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 96),
        children: [
          Text(
            'Pick a language, listen to a native-accent voice, '
            'then try it yourself, faster each time.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          for (final group in SectionGroup.values) ...[
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 8),
              child: Text(group.label, style: theme.textTheme.titleLarge),
            ),
            for (final section in group.sections)
              _SectionCard(section: section),
          ],
        ],
      ),
    );
  }
}

class _SectionCard extends ConsumerWidget {
  const _SectionCard({required this.section});

  final LanguageSection section;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final total = ref.watch(sectionTwistersProvider(section)).length;
    final practiced = ref.watch(sectionProgressProvider(section));

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) => SectionScreen(section: section),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Text(section.flag, style: const TextStyle(fontSize: 40)),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(section.title, style: theme.textTheme.titleMedium),
                    const SizedBox(height: 2),
                    Text(
                      section.subtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: total == 0 ? 0 : practiced / total,
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '$practiced of $total practised',
                      style: theme.textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
