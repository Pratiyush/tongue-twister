import 'package:flutter/material.dart';

import '../models/twister.dart';

class DifficultyBadge extends StatelessWidget {
  const DifficultyBadge(this.difficulty, {super.key});

  final Difficulty difficulty;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final (background, foreground) = switch (difficulty) {
      Difficulty.easy => (scheme.tertiaryContainer, scheme.onTertiaryContainer),
      Difficulty.medium => (
        scheme.secondaryContainer,
        scheme.onSecondaryContainer,
      ),
      Difficulty.hard => (scheme.errorContainer, scheme.onErrorContainer),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        difficulty.label,
        style: Theme.of(context).textTheme.labelSmall
            ?.copyWith(color: foreground),
      ),
    );
  }
}
