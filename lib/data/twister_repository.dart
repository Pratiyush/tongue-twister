import '../models/language_section.dart';
import '../models/twister.dart';
import 'twisters_de.dart';
import 'twisters_en_gb.dart';
import 'twisters_en_us.dart';
import 'twisters_hi.dart';

/// Bundled, offline twister catalogue.
class TwisterRepository {
  const TwisterRepository();

  List<Twister> forSection(LanguageSection section) => switch (section) {
    LanguageSection.englishUK => twistersEnGb,
    LanguageSection.englishUS => twistersEnUs,
    LanguageSection.hindi => twistersHi,
    LanguageSection.german => twistersDe,
  };

  List<Twister> all() => [
    for (final section in LanguageSection.values) ...forSection(section),
  ];
}
