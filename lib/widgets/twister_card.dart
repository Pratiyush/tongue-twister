import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/twister.dart';
import '../theme/app_theme.dart';
import '../providers/favorites_provider.dart';
import '../providers/practice_provider.dart';
import '../providers/settings_provider.dart';
import 'difficulty_badge.dart';
import 'speak_button.dart';

class TwisterCard extends ConsumerWidget {
  const TwisterCard({
    super.key,
    required this.twister,
    required this.onTap,
    this.showSection = false,
  });

  final Twister twister;
  final VoidCallback onTap;

  /// Shows the section flag; used on mixed lists such as favourites.
  final bool showSection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isFavorite = ref.watch(
      favoritesProvider.select((ids) => ids.contains(twister.id)),
    );
    final practiced = ref.watch(
      practiceProvider.select((c) => c[twister.id] ?? 0),
    );

    final showPronunciation = ref.watch(
      settingsProvider.select((s) => s.showPronunciation),
    );

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(color: theme.colorScheme.primary, width: 4),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 4, 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        twister.text,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium,
                      ),
                      if (showPronunciation &&
                          twister.transliteration != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          twister.transliteration!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontStyle: FontStyle.italic,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          if (showSection)
                            Text(
                              '${twister.section.flag} ${twister.section.shortLabel}',
                              style: theme.textTheme.labelSmall,
                            ),
                          DifficultyBadge(twister.difficulty),
                          if (practiced > 0)
                            Text(
                              'Practised $practiced×',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SpeakIconButton(twister: twister),
                    IconButton(
                      tooltip: isFavorite
                          ? 'Remove from favourites'
                          : 'Add to favourites',
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                      ),
                      color: isFavorite ? AppColors.favorite : null,
                      onPressed: () => ref
                          .read(favoritesProvider.notifier)
                          .toggle(twister.id),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
