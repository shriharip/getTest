import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettest/translations/app_translations.dart';
import 'package:gettest/ui/home_view.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    locale: Locale("en", "US"),
    translationsKeys: AppTranslation.translations,
    home: HomeView(),
  ));
}
