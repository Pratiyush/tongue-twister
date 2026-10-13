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
  Twister(
    id: 'de-kirschkerne',
    section: _s,
    text: 'Kleine Kinder können keine kleinen Kirschkerne knacken.',
    translation: "Little children can't crack little cherry stones.",
    difficulty: Difficulty.easy,
  ),
  Twister(
    id: 'de-ameisen',
    section: _s,
    text: 'Acht alte Ameisen aßen am Abend Ananas.',
    translation: 'Eight old ants ate pineapple in the evening.',
    difficulty: Difficulty.easy,
    tip: 'Note the ß in "aßen", a long, sharp "s".',
  ),
  Twister(
    id: 'de-bierbrauer',
    section: _s,
    text:
        'Bierbrauer Bauer braut braunes Bier, '
        'braunes Bier braut Bierbrauer Bauer.',
    translation:
        'Brewer Bauer brews brown beer; brown beer is brewed by brewer Bauer.',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'de-hemden',
    section: _s,
    text: 'Hinter Hermann Hannes Haus hängen hundert Hemden raus.',
    translation: "Behind Hermann Hanne's house, a hundred shirts hang out.",
    difficulty: Difficulty.medium,
    tip: 'Breathe out a clear German "h" on every word.',
  ),
  Twister(
    id: 'de-whiskeymixer',
    section: _s,
    text:
        'Der Whiskeymixer mixt den Whiskey mit dem Whiskeymixer. '
        'Mit dem Whiskeymixer mixt der Whiskeymixer den Whiskey.',
    translation:
        'The whiskey mixer mixes the whiskey with the whiskey mixer. '
        'With the whiskey mixer, the whiskey mixer mixes the whiskey.',
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'de-waschweiber',
    section: _s,
    text: 'Wir Wiener Waschweiber würden weiße Wäsche waschen, wenn wir wüssten, wo wirklich weiches, warmes Waschwasser wäre.',
    translation: 'We Viennese washerwomen would wash white laundry if we knew where really soft, warm washing water was.',
    difficulty: Difficulty.hard,
    tip: 'German W sounds like English V: "vir Veener Vashvyber".',
  ),
  Twister(
    id: 'de-leutnant',
    section: _s,
    text: 'Der Leutnant von Leuthen befahl seinen Leuten, nicht eher zu läuten, bis der Leutnant von Leuthen seinen Leuten das Läuten befahl.',
    translation: 'The lieutenant of Leuthen ordered his men not to ring until the lieutenant of Leuthen ordered his men to ring.',
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'de-frau-von-hagen',
    section: _s,
    text: 'Frau von Hagen, darf ich\'s wagen, Sie zu fragen, wie viel Kragen Sie getragen, als Sie lagen krank am Magen im Hospital zu Kopenhagen?',
    translation: 'Mrs von Hagen, may I dare to ask how many collars you wore when you lay ill with your stomach in the hospital in Copenhagen?',
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'de-rubenstein',
    section: _s,
    text: 'Es sprach der Herr von Rubenstein: Mein Hund, der ist nicht stubenrein.',
    translation: 'Said Mr von Rubenstein: my dog is not house-trained.',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'de-ulm',
    section: _s,
    text: 'In Ulm, um Ulm und um Ulm herum.',
    translation: 'In Ulm, around Ulm and all around Ulm.',
    difficulty: Difficulty.easy,
    tip: 'Ulm is a city on the Danube, birthplace of Albert Einstein.',
  ),
  Twister(
    id: 'de-schneeschipper',
    section: _s,
    text: 'Sieben Schneeschipper schippen sieben Schippen Schnee.',
    translation: 'Seven snow shovellers shovel seven shovelfuls of snow.',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'de-mondschein',
    section: _s,
    text: 'Der Mondschein schien schon schön.',
    translation: 'The moonlight was already shining beautifully.',
    difficulty: Difficulty.easy,
  ),
  Twister(
    id: 'de-wachsmasken',
    section: _s,
    text: 'Max wachst Wachsmasken. Was wachst Max? Wachsmasken wachst Max.',
    translation:
        'Max waxes wax masks. What does Max wax? Wax masks is what Max waxes.',
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'de-zwanzig-zwerge',
    section: _s,
    text: 'Zwanzig Zwerge zeigen Handstand, zehn im Wandschrank, zehn am Sandstrand.',
    translation:
        'Twenty dwarves do handstands, ten in the wardrobe, ten on the beach.',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'de-karl-kichern',
    section: _s,
    text: 'Karl kann komisch kichern.',
    translation: 'Karl can giggle funnily.',
    difficulty: Difficulty.easy,
  ),
];
