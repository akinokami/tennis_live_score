import 'package:get/get.dart';
import '../ui/screens/bottom_navigation/bottom_navigation_menu.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAll(() => BottomNavigationMenu());
    });
  }

  @override
  void dispose() {
    //
    super.dispose();
  }
}
