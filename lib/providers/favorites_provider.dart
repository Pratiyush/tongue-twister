import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/twister.dart';
import 'preferences_provider.dart';
import 'twister_providers.dart';

const _favoritesKey = 'favorite_twister_ids';

/// Ids of favourited twisters, persisted across launches.
class FavoritesNotifier extends Notifier<Set<String>> {
  @override
  Set<String> build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    return (prefs.getStringList(_favoritesKey) ?? const []).toSet();
  }

  void toggle(String id) {
    final next = {...state};
    if (!next.remove(id)) next.add(id);
    state = next;
    ref
        .read(sharedPreferencesProvider)
        .setStringList(_favoritesKey, next.toList());
  }
}

final favoritesProvider = NotifierProvider<FavoritesNotifier, Set<String>>(
  FavoritesNotifier.new,
);

/// Favourite twisters in catalogue order, skipping ids that no longer exist.
final favoriteTwistersProvider = Provider<List<Twister>>((ref) {
  final ids = ref.watch(favoritesProvider);
  return ref
      .watch(allTwistersProvider)
      .where((t) => ids.contains(t.id))
      .toList();
});
