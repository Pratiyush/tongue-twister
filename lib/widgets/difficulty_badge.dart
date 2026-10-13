import 'package:flutter/material.dart';

import '../models/twister.dart';
import '../theme/app_theme.dart';

class DifficultyBadge extends StatelessWidget {
  const DifficultyBadge(this.difficulty, {super.key});

  final Difficulty difficulty;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final (background, foreground) = difficulty.colors(theme.brightness);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        difficulty.label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: foreground,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
