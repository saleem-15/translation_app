import 'dart:developer';

import '../Api/constants.dart';

Future<String> translateTextService(
    {required String textToTranslate,
    required String toLanguageCode,
    required String fromLanguageCode}) async {
  final response = await Api.dio.post(
    Api.translationUrl,
    queryParameters: {
      'to': toLanguageCode,
      'from': fromLanguageCode,
      'api-version': 3.0,
    },
    data: [
      {
        'Text': textToTranslate,
      },
    ],
  );

  log(response.toString());

  return response.data[0]['translations'][0]['text'];
}
