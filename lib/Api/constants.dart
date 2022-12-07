import 'package:dio/dio.dart';

class Api {
  static const apiKey = '635497c688f2429bb93d8c15a1d166b9';
  static const String baseUrl = 'https://api.cognitive.microsofttranslator.com';
  static const translationUrl = '/translate';

  static final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 10000,
      headers: {
        'Content-Type': 'application/json',
        'Ocp-Apim-Subscription-Key': apiKey,
        'Ocp-Apim-Subscription-Region': 'qatarcentral',
      },
    ),
  );
}
