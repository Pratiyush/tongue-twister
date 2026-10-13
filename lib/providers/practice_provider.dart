import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/language_section.dart';
import 'preferences_provider.dart';
import 'twister_providers.dart';

const _practiceKey = 'practice_counts';

/// How many times the user has said each twister, keyed by twister id.
class PracticeNotifier extends Notifier<Map<String, int>> {
  @override
  Map<String, int> build() {
    final raw = ref.watch(sharedPreferencesProvider).getString(_practiceKey);
    if (raw == null) return const {};
    try {
      final decoded = jsonDecode(raw) as Map<String, dynamic>;
      return decoded.map((key, value) => MapEntry(key, value as int));
    } on FormatException {
      return const {};
    }
  }

  void recordAttempt(String id) {
    state = {...state, id: (state[id] ?? 0) + 1};
    ref
        .read(sharedPreferencesProvider)
        .setString(_practiceKey, jsonEncode(state));
  }

  void reset(String id) {
    if (!state.containsKey(id)) return;
    state = {...state}..remove(id);
    ref
        .read(sharedPreferencesProvider)
        .setString(_practiceKey, jsonEncode(state));
  }

  void clearAll() {
    state = const {};
    ref.read(sharedPreferencesProvider).remove(_practiceKey);
  }
}

final practiceProvider = NotifierProvider<PracticeNotifier, Map<String, int>>(
  PracticeNotifier.new,
);

/// Number of twisters in a section practised at least once.
final sectionProgressProvider = Provider.family<int, LanguageSection>((
  ref,
  section,
) {
  final counts = ref.watch(practiceProvider);
  return ref
      .watch(sectionTwistersProvider(section))
      .where((t) => (counts[t.id] ?? 0) > 0)
      .length;
});
