import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/language_section.dart';
import '../providers/favorites_provider.dart';
import '../providers/practice_provider.dart';
import '../providers/recommendation_provider.dart';
import '../providers/twister_providers.dart';
import '../theme/app_theme.dart';
import '../widgets/difficulty_badge.dart';
import 'favorites_screen.dart';
import 'section_screen.dart';
import 'settings_screen.dart';
import 'twister_detail_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

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
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 32),
        children: [
          const _Hero(),
          const SizedBox(height: 16),
          const _RecommendationCard(),
          for (final group in SectionGroup.values) ...[
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 6, left: 4),
              child: Text(
                group.label,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            for (final section in group.sections)
              _SectionCard(section: section),
          ],
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Text(
              appCredit,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Hero extends ConsumerWidget {
  const _Hero();

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
    final practised = ref.watch(
      practiceProvider.select((c) => c.values.where((n) => n > 0).length),
    );
    final total = ref.watch(allTwistersProvider).length;
    final favourites = ref.watch(favoritesProvider.select((f) => f.length));

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: AppColors.heroGradient,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Twist your tongue!',
            style: theme.textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Listen to a native voice, then say it faster each time.',
            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _Stat(value: '$practised/$total', label: 'practised'),
              const SizedBox(width: 24),
              _Stat(value: '$favourites', label: 'favourites'),
            ],
          ),
          const SizedBox(height: 16),
          FilledButton.icon(
            style: FilledButton.styleFrom(
              minimumSize: const Size.fromHeight(48),
              backgroundColor: Colors.white,
              foregroundColor: AppColors.brandDeep,
            ),
            onPressed: () => _openRandom(context, ref),
            icon: const Icon(Icons.shuffle),
            label: const Text('Surprise me'),
          ),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: theme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(color: Colors.white70),
        ),
      ],
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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.antiAlias,
        child: Ink(
          decoration: BoxDecoration(gradient: section.gradient),
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
                  Container(
                    width: 56,
                    height: 56,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white24,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      section.flag,
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          section.title,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          section.subtitle,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.white.withValues(alpha: 0.85),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: total == 0 ? 0 : practiced / total,
                            minHeight: 6,
                            color: Colors.white,
                            backgroundColor: Colors.white24,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '$practiced of $total practised',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: Colors.white.withValues(alpha: 0.9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.chevron_right, color: section.accentDeep),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _RecommendationCard extends ConsumerWidget {
  const _RecommendationCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recommendation = ref.watch(recommendationProvider);
    if (recommendation == null) return const SizedBox.shrink();
    final twister = recommendation.twister;

    return SectionTheme(
      section: twister.section,
      child: Builder(
        builder: (context) {
          final theme = Theme.of(context);
          final scheme = theme.colorScheme;
          return Card(
            margin: EdgeInsets.zero,
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                final list = ref.read(sectionTwistersProvider(twister.section));
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => TwisterDetailScreen(
                      twisters: list,
                      initialIndex: list.indexOf(twister),
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.auto_awesome,
                          size: 18,
                          color: scheme.primary,
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            'Recommended for you',
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: scheme.primary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(twister.section.flag),
                        const SizedBox(width: 8),
                        DifficultyBadge(twister.difficulty),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      twister.text,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            recommendation.reason,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: scheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward, color: scheme.primary),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
