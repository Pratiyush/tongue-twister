import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/language_section.dart';
import '../models/twister.dart';
import 'practice_provider.dart';
import 'twister_providers.dart';

/// Why a twister was suggested. The widget turns it into a sentence with
/// `Recommendation.describe` in `lib/l10n/l10n_ext.dart`, filling in the
/// twister's difficulty and language.
enum RecommendationReason {
  /// Everything has been tried; this is the least-practised twister.
  revise,

  /// Nothing has been practised yet; an easy one to begin with.
  starter,

  /// Untried, in a language the user already practises.
  practisedLanguage,

  /// Untried, in a language the user hasn't practised yet.
  newLanguage,
}

class Recommendation {
  const Recommendation(this.twister, this.reason);

  final Twister twister;

  /// Short explanation shown under the suggestion.
  final RecommendationReason reason;
}

/// Suggests what to practise next, based on the user's practice history.
///
/// Untried twisters come first: from the languages the user practises
/// most, easiest first. Once everything has been tried, the
/// least-practised twister comes back for revision.
final recommendationProvider = Provider<Recommendation?>((ref) {
  final all = ref.watch(visibleTwistersProvider);
  final counts = ref.watch(practiceProvider);
  if (all.isEmpty) return null;

  int count(Twister t) => counts[t.id] ?? 0;

  final sectionScore = <LanguageSection, int>{};
  for (final t in all) {
    sectionScore[t.section] = (sectionScore[t.section] ?? 0) + count(t);
  }
  final order = {for (final (i, t) in all.indexed) t.id: i};

  final untried = all.where((t) => count(t) == 0).toList()
    ..sort((a, b) {
      final bySection = sectionScore[b.section]!.compareTo(
        sectionScore[a.section]!,
      );
      if (bySection != 0) return bySection;
      final byDifficulty = a.difficulty.index.compareTo(b.difficulty.index);
      if (byDifficulty != 0) return byDifficulty;
      return order[a.id]!.compareTo(order[b.id]!);
    });

  if (untried.isEmpty) {
    final least = all.reduce((a, b) => count(b) < count(a) ? b : a);
    return Recommendation(least, RecommendationReason.revise);
  }

  final pick = untried.first;
  final reason = sectionScore.values.every((s) => s == 0)
      ? RecommendationReason.starter
      : sectionScore[pick.section]! > 0
      ? RecommendationReason.practisedLanguage
      : RecommendationReason.newLanguage;
  return Recommendation(pick, reason);
});
