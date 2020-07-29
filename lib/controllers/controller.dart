import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt count = 0.obs;
  RxString etext = " ".obs;

  String get extext => extext;

  @override
  onInit() {
    debounce(etext, (_) => doThings(), time: Duration(seconds: 1));
  }

  textChanged(val) {
    etext(val);
  }

  changeTheme() =>
      Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());

  changeLocale() {
    if (Get.locale?.languageCode == 'da')
      Get.updateLocale(Locale('en', 'US'));
    else
      Get.updateLocale(Locale("da", "DK"));
  }

  Future<void> doThings() async {
    Get.defaultDialog(
        onConfirm: () {
          print("${etext.string}");
          Get.back();
        },
        middleText: "We show dialog when you stop typing!");
  }
}
