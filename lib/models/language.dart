// ignore_for_file: public_member_api_docs, sort_constructors_first
class Language {
  String name;
  String nativeName;
  String code;

  Language({
    required this.name,
    required this.nativeName,
    required this.code,
  });

  @override
  bool operator ==(covariant Language other) {
    if (identical(this, other)) return true;

    return other.name == name && other.nativeName == nativeName && other.code == code;
  }

  @override
  int get hashCode => name.hashCode ^ nativeName.hashCode ^ code.hashCode;
}

final List<Language> supportedLanguages = [
  Language(name: 'Afrikaans', code: 'af', nativeName: 'Afrikaans'),
  Language(name: 'Amharic', code: 'am', nativeName: 'አማርኛ'),
  Language(name: 'Arabic', code: 'ar', nativeName: 'العربية'),
  Language(name: 'Assamese', code: 'as', nativeName: 'অসমীয়া'),
  Language(name: 'Azerbaijani', code: 'az', nativeName: 'Azərbaycan'),
  Language(name: 'Bashkir', code: 'ba', nativeName: 'Bashkir'),
  Language(name: 'Bulgarian', code: 'bg', nativeName: 'Български'),
  Language(name: 'Bangla', code: 'bn', nativeName: 'বাংলা'),
  Language(name: 'Tibetan', code: 'bo', nativeName: 'བོད་སྐད་'),
  Language(name: 'Bosnian', code: 'bs', nativeName: 'Bosnian'),
  Language(name: 'Catalan', code: 'ca', nativeName: 'Català'),
  Language(name: 'Czech', code: 'cs', nativeName: 'Čeština'),
  Language(name: 'Welsh', code: 'cy', nativeName: 'Cymraeg'),
  Language(name: 'Danish', code: 'da', nativeName: 'Dansk'),
  Language(name: 'German', code: 'de', nativeName: 'Deutsch'),
  Language(name: 'Divehi', code: 'dv', nativeName: 'ދިވެހިބަސް'),
  Language(name: 'Greek', code: 'el', nativeName: 'Ελληνικά'),
  Language(name: 'English', code: 'en', nativeName: 'English'),
  Language(name: 'Spanish', code: 'es', nativeName: 'Español'),
  Language(name: 'Estonian', code: 'et', nativeName: 'Eesti'),
  Language(name: 'Basque', code: 'eu', nativeName: 'Euskara'),
  Language(name: 'Persian', code: 'fa', nativeName: 'فارسی'),
  Language(name: 'Finnish', code: 'fi', nativeName: 'Suomi'),
  Language(name: 'Filipino', code: 'fil', nativeName: 'Filipino'),
  Language(name: 'Fijian', code: 'fj', nativeName: 'Na Vosa Vakaviti'),
  Language(name: 'Faroese', code: 'fo', nativeName: 'Føroyskt'),
  Language(name: 'French', code: 'fr', nativeName: 'Français'),
  Language(name: 'French (Canada)', code: 'fr-CA', nativeName: 'Français (Canada)'),
  Language(name: 'Irish', code: 'ga', nativeName: 'Gaeilge'),
  Language(name: 'Galician', code: 'gl', nativeName: 'Galego'),
  Language(name: 'Gujarati', code: 'gu', nativeName: 'ગુજરાતી'),
  Language(name: 'Hebrew', code: 'he', nativeName: 'עברית'),
  Language(name: 'Hindi', code: 'hi', nativeName: 'हिन्दी'),
  Language(name: 'Croatian', code: 'hr', nativeName: 'Hrvatski'),
  Language(name: 'Upper Sorbian', code: 'hsb', nativeName: 'Hornjoserbšćina'),
  Language(name: 'Haitian Creole', code: 'ht', nativeName: 'Haitian Creole'),
  Language(name: 'Hungarian', code: 'hu', nativeName: 'Magyar'),
  Language(name: 'Armenian', code: 'hy', nativeName: 'Հայերեն'),
  Language(name: 'Indonesian', code: 'id', nativeName: 'Indonesia'),
  Language(name: 'Inuinnaqtun', code: 'ikt', nativeName: 'Inuinnaqtun'),
  Language(name: 'Icelandic', code: 'is', nativeName: 'Íslenska'),
  Language(name: 'Italian', code: 'it', nativeName: 'Italiano'),
  Language(name: 'Inuktitut', code: 'iu', nativeName: 'ᐃᓄᒃᑎᑐᑦ'),
  Language(name: 'Inuktitut (Latin)', code: 'iu-Latn', nativeName: 'Inuktitut (Latin)'),
  Language(name: 'Japanese', code: 'ja', nativeName: '日本語'),
  Language(name: 'Georgian', code: 'ka', nativeName: 'ქართული'),
  Language(name: 'Kazakh', code: 'kk', nativeName: 'Қазақ Тілі'),
  Language(name: 'Khmer', code: 'km', nativeName: 'ខ្មែរ'),
  Language(name: 'Kurdish (Northern)', code: 'kmr', nativeName: 'Kurdî (Bakur)'),
  Language(name: 'Kannada', code: 'kn', nativeName: 'ಕನ್ನಡ'),
  Language(name: 'Korean', code: 'ko', nativeName: '한국어'),
  Language(name: 'Kurdish (Central)', code: 'ku', nativeName: 'Kurdî (Navîn)'),
  Language(name: 'Kyrgyz', code: 'ky', nativeName: 'Кыргызча'),
  Language(name: 'Lao', code: 'lo', nativeName: 'ລາວ'),
  Language(name: 'Lithuanian', code: 'lt', nativeName: 'Lietuvių'),
  Language(name: 'Latvian', code: 'lv', nativeName: 'Latviešu'),
  Language(name: 'Chinese (Literary)', code: 'lzh', nativeName: '中文 (文言文)'),
  Language(name: 'Malagasy', code: 'mg', nativeName: 'Malagasy'),
  Language(name: 'Māori', code: 'mi', nativeName: 'Te Reo Māori'),
  Language(name: 'Macedonian', code: 'mk', nativeName: 'Македонски'),
  Language(name: 'Malayalam', code: 'ml', nativeName: 'മലയാളം'),
  Language(name: 'Mongolian (Cyrillic)', code: 'mn-Cyrl', nativeName: 'Mongolian (Cyrillic)'),
  Language(name: 'Mongolian (Traditional)', code: 'mn-Mong', nativeName: 'ᠮᠣᠩᠭᠣᠯ ᠬᠡᠯᠡ'),
  Language(name: 'Marathi', code: 'mr', nativeName: 'मराठी'),
  Language(name: 'Malay', code: 'ms', nativeName: 'Melayu'),
  Language(name: 'Maltese', code: 'mt', nativeName: 'Malti'),
  Language(name: 'Hmong Daw', code: 'mww', nativeName: 'Hmong Daw'),
  Language(name: 'Myanmar (Burmese)', code: 'my', nativeName: 'မြန်မာ'),
  Language(name: 'Norwegian', code: 'nb', nativeName: 'Norsk Bokmål'),
  Language(name: 'Nepali', code: 'ne', nativeName: 'नेपाली'),
  Language(name: 'Dutch', code: 'nl', nativeName: 'Nederlands'),
  Language(name: 'Odia', code: 'or', nativeName: 'ଓଡ଼ିଆ'),
  Language(name: 'Querétaro Otomi', code: 'otq', nativeName: 'Hñähñu'),
  Language(name: 'Punjabi', code: 'pa', nativeName: 'ਪੰਜਾਬੀ'),
  Language(name: 'Polish', code: 'pl', nativeName: 'Polski'),
  Language(name: 'Dari', code: 'prs', nativeName: 'دری'),
  Language(name: 'Pashto', code: 'ps', nativeName: 'پښتو'),
  Language(name: 'Portuguese (Brazil)', code: 'pt', nativeName: 'Português (Brasil)'),
  Language(name: 'Portuguese (Portugal)', code: 'pt-PT', nativeName: 'Português (Portugal)'),
  Language(name: 'Romanian', code: 'ro', nativeName: 'Română'),
  Language(name: 'Russian', code: 'ru', nativeName: 'Русский'),
  Language(name: 'Slovak', code: 'sk', nativeName: 'Slovenčina'),
  Language(name: 'Slovenian', code: 'sl', nativeName: 'Slovenščina'),
  Language(name: 'Samoan', code: 'sm', nativeName: 'Gagana Sāmoa'),
  Language(name: 'Somali', code: 'so', nativeName: 'Soomaali'),
  Language(name: 'Albanian', code: 'sq', nativeName: 'Shqip'),
  Language(name: 'Serbian (Cyrillic)', code: 'sr-Cyrl', nativeName: 'Српски (ћирилица)'),
  Language(name: 'Serbian (Latin)', code: 'sr-Latn', nativeName: 'Srpski (latinica)'),
  Language(name: 'Swedish', code: 'sv', nativeName: 'Svenska'),
  Language(name: 'Swahili', code: 'sw', nativeName: 'Kiswahili'),
  Language(name: 'Tamil', code: 'ta', nativeName: 'தமிழ்'),
  Language(name: 'Telugu', code: 'te', nativeName: 'తెలుగు'),
  Language(name: 'Thai', code: 'th', nativeName: 'ไทย'),
  Language(name: 'Tigrinya', code: 'ti', nativeName: 'ትግር'),
  Language(name: 'Turkmen', code: 'tk', nativeName: 'Türkmen Dili'),
  Language(name: 'Klingon (Latin)', code: 'tlh-Latn', nativeName: 'Klingon (Latin)'),
  Language(name: 'Klingon (pIqaD)', code: 'tlh-Piqd', nativeName: 'Klingon (pIqaD)'),
  Language(name: 'Tongan', code: 'to', nativeName: 'Lea Fakatonga'),
  Language(name: 'Turkish', code: 'tr', nativeName: 'Türkçe'),
  Language(name: 'Tatar', code: 'tt', nativeName: 'Татар'),
  Language(name: 'Tahitian', code: 'ty', nativeName: 'Reo Tahiti'),
  Language(name: 'Uyghur', code: 'ug', nativeName: 'ئۇيغۇرچە'),
  Language(name: 'Ukrainian', code: 'uk', nativeName: 'Українська'),
  Language(name: 'Urdu', code: 'ur', nativeName: 'اردو'),
  Language(name: 'Uzbek (Latin)', code: 'uz', nativeName: 'Uzbek (Latin)'),
  Language(name: 'Vietnamese', code: 'vi', nativeName: 'Tiếng Việt'),
  Language(name: 'Yucatec Maya', code: 'yua', nativeName: 'Yucatec Maya'),
  Language(name: 'Cantonese (Traditional)', code: 'yue', nativeName: '粵語 (繁體)'),
  Language(name: 'Chinese Simplified', code: 'zh-Hans', nativeName: '中文 (简体)'),
  Language(name: 'Chinese Traditional', code: 'zh-Hant', nativeName: '繁體中文 (繁體)'),
  Language(name: 'Zulu', code: 'zu', nativeName: 'Isi-Zulu'),
];

/// ***************************
/// I have used this function to genereate the list of languages above from a json
/// ************************8 

// convert(String json) {
//   final Map<String, dynamic> map = jsonDecode(json);

//   map.forEach(
//     (key, value) {
//       // log(value.runtimeType.toString());
//       // log(value.toString());
//       // final Map<String, dynamic> languageMap = jsonDecode(value);
//       final name = value['name'];
//       final nativeName = value['nativeName'];
//       final languageCode = key;

//       log("Language(name:'$name',code:'$languageCode',nativeName:'$nativeName'),");
//     },
//   );
// }