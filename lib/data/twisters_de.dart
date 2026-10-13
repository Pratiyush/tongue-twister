import '../models/language_section.dart';
import '../models/twister.dart';

const _s = LanguageSection.german;

const twistersDe = <Twister>[
  Twister(
    id: 'de-fischers-fritz',
    section: _s,
    text: 'Fischers Fritz fischt frische Fische, frische Fische fischt Fischers Fritz.',
    translation: "Fisherman's Fritz fishes fresh fish; fresh fish fishes Fisherman's Fritz.",
    difficulty: Difficulty.medium,
    tip: 'The classic German Zungenbrecher. Watch the "sch" vs. "f".',
  ),
  Twister(
    id: 'de-blaukraut',
    section: _s,
    text: 'Blaukraut bleibt Blaukraut und Brautkleid bleibt Brautkleid.',
    translation: 'Red cabbage stays red cabbage and a wedding dress stays a wedding dress.',
    difficulty: Difficulty.hard,
    tip: '"Blaukraut" literally means "blue cabbage", the southern German word for red cabbage.',
  ),
  Twister(
    id: 'de-zwetschgenzweigen',
    section: _s,
    text: 'Zwischen zwei Zwetschgenzweigen sitzen zwei zwitschernde Schwalben.',
    translation: 'Between two plum branches sit two chirping swallows.',
    difficulty: Difficulty.hard,
    tip: 'German Z sounds like "ts": tsvi, tsvetsh-gen.',
  ),
  Twister(
    id: 'de-postkutscher',
    section: _s,
    text: 'Der Cottbuser Postkutscher putzt den Cottbuser Postkutschkasten.',
    translation:
        'The Cottbus mail-coach driver cleans the Cottbus mail-coach box.',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'de-zehn-ziegen',
    section: _s,
    text: 'Zehn zahme Ziegen zogen zehn Zentner Zucker zum Zoo.',
    translation: 'Ten tame goats pulled ten hundredweight of sugar to the zoo.',
    difficulty: Difficulty.easy,
  ),
  Twister(
    id: 'de-fliegen',
    section: _s,
    text: 'Wenn Fliegen hinter Fliegen fliegen, fliegen Fliegen Fliegen nach.',
    translation: 'When flies fly behind flies, flies fly after flies.',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'de-esel-nesseln',
    section: _s,
    text: 'Esel essen Nesseln nicht, Nesseln essen Esel nicht.',
    translation: "Donkeys don't eat nettles, nettles don't eat donkeys.",
    difficulty: Difficulty.easy,
  ),
  Twister(
    id: 'de-klapperschlangen',
    section: _s,
    text: 'Es klapperten die Klapperschlangen, bis ihre Klappern schlapper klangen.',
    translation: 'The rattlesnakes rattled until their rattles sounded limper.',
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'de-schnecken',
    section: _s,
    text:
        'Schnecken erschrecken, wenn Schnecken an Schnecken schlecken, '
        'weil zum Schrecken vieler Schnecken Schnecken nicht schmecken.',
    translation:
        "Snails get startled when snails lick snails, because, to many snails' "
        "horror, snails don't taste good.",
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'de-fichtendickicht',
    section: _s,
    text: 'Im dichten Fichtendickicht picken dicke Finken tüchtig.',
    translation: 'In the dense spruce thicket, fat finches peck diligently.',
    difficulty: Difficulty.medium,
    tip: 'Practise the soft "ch" (ich-Laut) in dicht, Fichten and tüchtig.',
  ),
];
