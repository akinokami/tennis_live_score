import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tennis_live_score/controller/scores_controller.dart';
import 'package:tennis_live_score/controller/splash_screen_controller.dart';
import 'package:tennis_live_score/controller/standing_controller.dart';

import '../utils/global.dart';

class LanguageController extends GetxController {
  final language = ''.obs;
  final isLoading = false.obs;
  final splashController = Get.put(SplashScreenController());
  final scoreController = Get.put(ScoresController());
  final standingController = Get.put(StandingController());

  @override
  void onInit() {
    getLanguage();
    super.onInit();
  }

  void changeLanguage(String languageCode, String countryCode) {
    isLoading.value = true;
    language.value = languageCode;
    Global.language = languageCode;
    Get.updateLocale(Locale(languageCode, countryCode));
    final box = GetStorage();
    box.write('language', languageCode);
    Future.delayed(const Duration(seconds: 2), () {
      splashController.getAppSetting();
      scoreController.startScore();
      standingController.startStanding();
      isLoading.value = false;
    });
  }

  void getLanguage() {
    final box = GetStorage();
    language.value = box.read('language') ?? 'hi';
  }
}
