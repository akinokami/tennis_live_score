import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/models/app_setting.dart';
import 'package:tennis_live_score/utils/constants.dart';

import '../services/api_repo.dart';
import '../ui/screens/bottom_navigation/bottom_navigation_menu.dart';
import '../utils/global.dart';

class SplashScreenController extends GetxController {
  final isLoading = false.obs;
  Rx<AppSetting> appSetting = AppSetting().obs;

  @override
  void onInit() {
    getAppSetting();
    super.onInit();
  }

  Future<void> getAppSetting() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getAppSetting();
      appSetting.value = result;
      Global.appSetting = appSetting.value;
      Future.delayed(const Duration(seconds: 1), () {
        Get.offAll(() => BottomNavigationMenu());
      });
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void dispose() {
    //
    super.dispose();
  }
}
