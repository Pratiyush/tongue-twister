import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/twister_repository.dart';
import '../models/language_section.dart';
import '../models/twister.dart';

final twisterRepositoryProvider = Provider<TwisterRepository>(
  (ref) => const TwisterRepository(),
);

final allTwistersProvider = Provider<List<Twister>>(
  (ref) => ref.watch(twisterRepositoryProvider).all(),
);

final sectionTwistersProvider = Provider.family<List<Twister>, LanguageSection>(
  (ref, section) => ref.watch(twisterRepositoryProvider).forSection(section),
);

final twisterByIdProvider = Provider.family<Twister?, String>((ref, id) {
  for (final twister in ref.watch(allTwistersProvider)) {
    if (twister.id == id) return twister;
  }
  return null;
});
