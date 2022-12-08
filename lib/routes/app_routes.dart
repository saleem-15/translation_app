// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const TRANSLATION_PAGE = _Paths.TRANSLATION_PAGE;
  static const CHOOSE_SOURCE_LANGUAGE_PAGE = _Paths.SOURCE_LANGUAGE_PAGE;
  static const CHOOSE_DESTINATION_LANGUAGE_PAGE = _Paths.DESTINATION_LANGUAGE_PAGE;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home_page';
  static const SOURCE_LANGUAGE_PAGE = '/choose_source_language_page';
  static const DESTINATION_LANGUAGE_PAGE = '/choose_destination_language_page';
  static const TRANSLATION_PAGE = '/translation_page';

}
