import 'package:flutter_test/flutter_test.dart';
import 'package:tongue_twister/data/twister_repository.dart';
import 'package:tongue_twister/models/language_section.dart';

void main() {
  const repo = TwisterRepository();

  test('ids are unique across every section', () {
    final ids = repo.all().map((t) => t.id).toList();
    expect(ids.toSet().length, ids.length);
  });

  test('every section has at least 25 twisters', () {
    for (final section in LanguageSection.values) {
      expect(
        repo.forSection(section).length,
        greaterThanOrEqualTo(25),
        reason: section.name,
      );
    }
  });

  test('every section has twisters filed under the right section', () {
    for (final section in LanguageSection.values) {
      final twisters = repo.forSection(section);
      expect(twisters, isNotEmpty, reason: section.name);
      expect(
        twisters.every((t) => t.section == section),
        isTrue,
        reason: section.name,
      );
      expect(twisters.every((t) => t.text.trim().isNotEmpty), isTrue);
    }
  });

  test('English has British and American variants with distinct accents', () {
    expect(SectionGroup.english.sections, [
      LanguageSection.englishUK,
      LanguageSection.englishUS,
    ]);
    expect(LanguageSection.englishUK.ttsLocale, 'en-GB');
    expect(LanguageSection.englishUS.ttsLocale, 'en-US');
  });

  test('Hindi twisters are in Devanagari with transliteration and meaning', () {
    final devanagari = RegExp(r'[ऀ-ॿ]');
    for (final t in repo.forSection(LanguageSection.hindi)) {
      expect(devanagari.hasMatch(t.text), isTrue, reason: t.id);
      expect(t.transliteration, isNotNull, reason: t.id);
      expect(t.translation, isNotNull, reason: t.id);
    }
  });

  test('German twisters have an English meaning', () {
    for (final t in repo.forSection(LanguageSection.german)) {
      expect(t.translation, isNotNull, reason: t.id);
    }
  });
}
