import 'package:gettest/translations/da_DK/da_DK_translations.dart';
import 'package:gettest/translations/en_US/en_US_translations.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'da_DK': daDk,
    'en_US': enUs,
  };
}
