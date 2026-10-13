import '../models/language_section.dart';
import '../models/twister.dart';

const _s = LanguageSection.englishUS;

const twistersEnUs = <Twister>[
  Twister(
    id: 'us-peter-piper',
    section: _s,
    text:
        'Peter Piper picked a peck of pickled peppers. '
        'A peck of pickled peppers Peter Piper picked. '
        'If Peter Piper picked a peck of pickled peppers, '
        "where's the peck of pickled peppers Peter Piper picked?",
    difficulty: Difficulty.medium,
    tip: 'A peck is an old unit of dry volume, about two gallons.',
  ),
  Twister(
    id: 'us-woodchuck',
    section: _s,
    text: 'How much wood would a woodchuck chuck if a woodchuck could chuck wood?',
    difficulty: Difficulty.medium,
    tip: 'Woodchucks (groundhogs) are native to North America.',
  ),
  Twister(
    id: 'us-buggy-bumpers',
    section: _s,
    text: 'Rubber baby buggy bumpers.',
    difficulty: Difficulty.hard,
    tip: '"Buggy" is American for a baby stroller, or pram in the UK.',
  ),
  Twister(
    id: 'us-unique-new-york',
    section: _s,
    text:
        'Unique New York, unique New York, you know you need unique New York.',
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'us-toy-boat',
    section: _s,
    text: 'Toy boat. Toy boat. Toy boat. Toy boat. Toy boat.',
    difficulty: Difficulty.hard,
    tip: 'Looks easy. Say it five times fast and see.',
  ),
  Twister(
    id: 'us-red-leather',
    section: _s,
    text: 'Red leather, yellow leather, red leather, yellow leather.',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'us-truly-rural',
    section: _s,
    text: 'Truly rural, truly rural, truly rural.',
    difficulty: Difficulty.hard,
    tip: 'The strong American R makes this one extra tricky.',
  ),
  Twister(
    id: 'us-big-black-bug',
    section: _s,
    text: 'A big black bug bit a big black bear and made the big black bear bleed blood.',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'us-fuzzy-wuzzy',
    section: _s,
    text:
        "Fuzzy Wuzzy was a bear. Fuzzy Wuzzy had no hair. "
        "Fuzzy Wuzzy wasn't fuzzy, was he?",
    difficulty: Difficulty.easy,
  ),
  Twister(
    id: 'us-eleven-elephants',
    section: _s,
    text: 'Eleven benevolent elephants.',
    difficulty: Difficulty.easy,
  ),
  Twister(
    id: 'us-skunk-stump',
    section: _s,
    text:
        'A skunk sat on a stump and thunk the stump stunk, '
        'but the stump thunk the skunk stunk.',
    difficulty: Difficulty.medium,
    tip: '"Thunk" is playful American slang for "thought".',
  ),
  Twister(
    id: 'us-pad-kid',
    section: _s,
    text: 'Pad kid poured curd pulled cod.',
    difficulty: Difficulty.hard,
    tip:
        'MIT researchers called this one of the hardest tongue twisters '
        'in English; many people stop after a few tries.',
  ),
  Twister(
    id: 'us-two-witches',
    section: _s,
    text:
        'If two witches were watching two watches, '
        'which witch would watch which watch?',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'us-canner',
    section: _s,
    text: 'Can you can a can as a canner can can a can?',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'us-clam-cram',
    section: _s,
    text: 'How can a clam cram in a clean cream can?',
    difficulty: Difficulty.easy,
  ),
];
