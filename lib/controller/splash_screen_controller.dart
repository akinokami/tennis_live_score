import 'package:get/get.dart';

import '../ui/screens/intro/intro_screen.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAll(() => const IntroScreen());
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
