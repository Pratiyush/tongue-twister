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
  Twister(
    id: 'hi-neeli-rel',
    section: _s,
    text: 'नीली रेल, लाल रेल।',
    transliteration: 'Neeli rel, laal rel.',
    translation: 'Blue train, red train.',
    difficulty: Difficulty.easy,
    tip:
        'The Hindi cousin of "red lorry, yellow lorry". Say it ten times fast.',
  ),
  Twister(
    id: 'hi-jo-hansega',
    section: _s,
    text: 'जो हँसेगा वो फँसेगा, जो फँसेगा वो हँसेगा।',
    transliteration: 'Jo hansega vo phansega, jo phansega vo hansega.',
    translation: 'Whoever laughs gets caught; whoever gets caught laughs.',
    difficulty: Difficulty.easy,
  ),
  Twister(
    id: 'hi-daali-daali',
    section: _s,
    text:
        'डाली डाली पे नज़र डाली, किसी ने अच्छी डाली, '
        'किसी ने बुरी डाली।',
    transliteration:
        'Daali daali pe nazar daali, kisi ne achchhi daali, '
        'kisi ne buri daali.',
    translation:
        'I cast a glance at every branch; someone put in a good one, '
        'someone put in a bad one.',
    difficulty: Difficulty.medium,
    tip: 'डाली means both "branch" and "cast" or "put"; the fun is the double meaning.',
  ),
  Twister(
    id: 'hi-marham',
    section: _s,
    text: 'मर हम भी गए मरहम के लिए, मरहम न मिला हम दम से गए।',
    transliteration:
        'Mar ham bhi gaye marham ke liye, marham na mila ham dam se gaye.',
    translation:
        'We nearly died looking for ointment; we found no ointment '
        'and lost our breath.',
    difficulty: Difficulty.hard,
    tip: '"मर हम" (we died) sounds just like "मरहम" (ointment).',
  ),
  Twister(
    id: 'hi-tola-ram',
    section: _s,
    text: 'तोला राम ताला तोल के तेल में तुल गया, तुला हुआ तोला ताले के तले हुए तेल में तला गया।',
    transliteration: 'Tola Ram taala tol ke tel mein tul gaya, tula hua Tola taale ke tale hue tel mein tala gaya.',
    translation: 'Tola Ram weighed a lock and got weighed in oil; the weighed Tola was fried in the lock\'s fried oil.',
    difficulty: Difficulty.hard,
    tip: 'Plays on तोल (weigh), तुल (be weighed), तल (fry) and ताला (lock).',
  ),
  Twister(
    id: 'hi-dubey-dubai',
    section: _s,
    text: 'दूबे दुबई में डूब गया।',
    transliteration: 'Dubey Dubai mein doob gaya.',
    translation: 'Dubey drowned in Dubai.',
    difficulty: Difficulty.easy,
  ),
  Twister(
    id: 'hi-faalse-faasla',
    section: _s,
    text: 'फालसे का फासला।',
    transliteration: 'Faalse ka faasla.',
    translation: 'The distance of the phalsa berries.',
    difficulty: Difficulty.medium,
    tip: 'फालसा is a small purple berry; फासला means distance.',
  ),
  Twister(
    id: 'hi-udi-chidi',
    section: _s,
    text: 'उड़ी चिड़ी ऊँची उड़ी, सब्ज़ी पूड़ी ठंडी पड़ी।',
    transliteration: 'Udi chidi oonchi udi, sabzi poodi thandi padi.',
    translation: 'The bird flew up high; the vegetables and puris went cold.',
    difficulty: Difficulty.medium,
  ),
  Twister(
    id: 'hi-chanda-chamke',
    section: _s,
    text: 'चंदा चमके चम-चम, चीखे चौकन्ना चोर, चींटी चाटे चीनी, चटोरी चीनी-खोर।',
    transliteration: 'Chanda chamke cham-cham, cheekhe chaukanna chor, cheenti chaate cheeni, chatori cheeni-khor.',
    translation: 'The moon shines bright, the wary thief shrieks, the ant licks sugar: a greedy sugar-eater.',
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'hi-tamatar-tawe',
    section: _s,
    text: 'टमाटर तले तवे पर, तड़का तड़का तला टमाटर।',
    transliteration: 'Tamatar tale tawe par, tadka tadka tala tamatar.',
    translation: 'Tomatoes fried on the griddle, tempered and fried tomatoes.',
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'hi-upar-pankha',
    section: _s,
    text: 'ऊपर पंखा, नीचे पंखी।',
    transliteration: 'Upar pankha, neeche pankhi.',
    translation: 'A fan above, a little hand fan below.',
    difficulty: Difficulty.easy,
  ),
  Twister(
    id: 'hi-gol-gappa',
    section: _s,
    text: 'गोल में गप्पा, गप्पे में गोला।',
    transliteration: 'Gol mein gappa, gappe mein gola.',
    translation: 'A gappa in the round, a round in the gappa.',
    difficulty: Difficulty.medium,
    tip: 'It splits गोलगप्पा (pani puri) into its two halves.',
  ),
  Twister(
    id: 'hi-das-darjan',
    section: _s,
    text: 'दस दर्ज़न दरी दर्ज़ी ने दर्ज की।',
    transliteration: 'Das darzan dari darzi ne darj ki.',
    translation: 'The tailor recorded ten dozen rugs.',
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'hi-laali-boli',
    section: _s,
    text: 'लाली बोली लल्लू से, लल्लन लाया था लालू की शादी पे, लाल-लाल लिफ़ाफ़े में लड्डू।',
    transliteration: 'Laali boli Lallu se, Lallan laaya tha Laalu ki shaadi pe, laal-laal lifaafe mein laddoo.',
    translation: 'Laali told Lallu that Lallan brought laddoos in red envelopes to Laalu\'s wedding.',
    difficulty: Difficulty.hard,
  ),
  Twister(
    id: 'hi-kachcha-kaddu',
    section: _s,
    text: 'कच्चा कद्दू, पक्का कद्दू।',
    transliteration: 'Kachcha kaddu, pakka kaddu.',
    translation: 'Raw pumpkin, ripe pumpkin.',
    difficulty: Difficulty.easy,
  ),
  Twister(
    id: 'hi-chatai-chatni',
    section: _s,
    text: 'चटाई पे चटनी चटाई।',
    transliteration: 'Chataai pe chatni chataai.',
    translation: 'Fed chutney on the mat.',
    difficulty: Difficulty.medium,
    tip: 'चटाई means both "mat" and "made someone lick".',
  ),
  Twister(
    id: 'hi-tota-tamatar',
    section: _s,
    text: 'तोता ताज़ा टमाटर तोड़ रहा था।',
    transliteration: 'Tota taaza tamatar tod raha tha.',
    translation: 'The parrot was picking fresh tomatoes.',
    difficulty: Difficulty.easy,
  ),
  Twister(
    id: 'hi-nau-sau-ninyanve',
    section: _s,
    text: 'नौ सौ निन्यानवे नौमनियों ने नौ सौ निन्यानवे नारियलों से नारियल तेल निकाला।',
    transliteration:
        'Nau sau ninyaanve naumaniyon ne nau sau ninyaanve naariyalon se '
        'naariyal tel nikaala.',
    translation:
        'Nine hundred and ninety-nine Naumanis pressed coconut oil from '
        'nine hundred and ninety-nine coconuts.',
    difficulty: Difficulty.hard,
    tip: 'नौ सौ निन्यानवे is 999. Keep every न sound crisp.',
  ),
];
