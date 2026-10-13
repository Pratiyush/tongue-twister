import '../models/language_section.dart';
import '../models/twister.dart';

const _s = LanguageSection.hindi;

const twistersHi = <Twister>[
  Twister(
    id: 'hi-kachcha-papad',
    section: _s,
    text: 'कच्चा पापड़, पक्का पापड़।',
    transliteration: 'Kachcha paapad, pakka paapad.',
    translation: 'Raw papad, cooked papad.',
    difficulty: Difficulty.easy,
    tip: 'Short, but the ड़ (retroflex flap) trips people up at speed.',
  ),
  Twister(
    id: 'hi-chandu-ke-chacha',
    section: _s,
    text:
        'चंदू के चाचा ने चंदू की चाची को चाँदनी चौक में '
        'चाँदी के चम्मच से चटनी चटाई।',
    transliteration:
        'Chandu ke chacha ne Chandu ki chachi ko Chandni Chowk mein '
        'chaandi ke chammach se chatni chataai.',
    translation:
        "Chandu's uncle fed Chandu's aunt chutney with a silver spoon "
        'in Chandni Chowk.',
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'hi-peetal-ke-pateele',
    section: _s,
    text: 'पीतल के पतीले में पपीता पीला पीला।',
    transliteration: 'Peetal ke pateele mein papeeta peela peela.',
    translation: 'A yellow, yellow papaya in a brass pot.',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'hi-kharak-singh',
    section: _s,
    text:
        'खड़क सिंह के खड़कने से खड़कती हैं खिड़कियाँ, '
        'खिड़कियों के खड़कने से खड़कता है खड़क सिंह।',
    transliteration:
        'Kharak Singh ke kharakne se kharakti hain khidkiyaan, '
        'khidkiyon ke kharakne se kharakta hai Kharak Singh.',
    translation:
        "Kharak Singh's rattling makes the windows rattle; "
        "the windows' rattling makes Kharak Singh rattle.",
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'hi-samajh-samajh',
    section: _s,
    text: 'समझ समझ के समझ को समझो, समझ समझना भी एक समझ है।',
    transliteration:
        'Samajh samajh ke samajh ko samjho, samajh samajhna bhi ek samajh hai.',
    translation:
        'Understand understanding by understanding; '
        'understanding understanding is also an understanding.',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'hi-oont-ooncha',
    section: _s,
    text: 'ऊँट ऊँचा, ऊँट की पीठ ऊँची, ऊँची पूँछ ऊँट की।',
    transliteration:
        'Oont ooncha, oont ki peeth oonchi, oonchi poonchh oont ki.',
    translation: "The camel is tall, the camel's back is high, high is the camel's tail.",
    difficulty: Difficulty.easy,
    tip: 'Keep the nasal ँ (chandrabindu) sound on every "oon".',
  ),
  Twister(
    id: 'hi-pake-ped-papeeta',
    section: _s,
    text:
        'पके पेड़ पर पका पपीता, पका पेड़ या पका पपीता? '
        'पके पेड़ को पकड़े पिंकू, पिंकू पकड़े पका पपीता।',
    transliteration:
        'Pake ped par paka papeeta, paka ped ya paka papeeta? '
        'Pake ped ko pakde Pinku, Pinku pakde paka papeeta.',
    translation:
        'A ripe papaya on a ripe tree: is the tree ripe or the papaya? '
        'Pinku holds the ripe tree, Pinku holds the ripe papaya.',
    difficulty: Difficulty.hard,
  ),
];
