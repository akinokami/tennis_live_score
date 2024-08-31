import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/controller/bottom_nav_controller.dart';
import 'package:tennis_live_score/ui/screens/scores/scores_screen.dart';
import 'package:tennis_live_score/ui/screens/scores/search_screen.dart';
import 'package:tennis_live_score/ui/screens/settings/settings_screen.dart';
import '../../../constants/color_const.dart';
import '../standing/standing_screen.dart';

class BottomNavigationMenu extends StatelessWidget {
  BottomNavigationMenu({super.key});

  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 11.sp);

  final TextStyle selectedLabelStyle = TextStyle(
      color: secondaryColor, fontWeight: FontWeight.w500, fontSize: 11.sp);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 55.h,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: const Color(0xff1B8B00),
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: secondaryColor,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.scoreboard_outlined,
                  size: 18.w,
                ),
                label: 'score'.tr,
                backgroundColor: primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 18.w,
                ),
                label: 'search'.tr,
                backgroundColor: primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                  size: 18.w,
                ),
                label: 'standing'.tr,
                backgroundColor: primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 18.w,
                ),
                label: 'settings'.tr,
                backgroundColor: primaryColor,
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController =
        Get.put(BottomNavController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      backgroundColor: primaryColor,
      bottomNavigationBar:
          buildBottomNavigationMenu(context, bottomNavController),
      body: Obx(() => IndexedStack(
            index: bottomNavController.tabIndex.value,
            children: const [
              ScoresScreen(),
              SearchScreen(),
              StandingScreen(),
              SettingsScreen()
            ],
          )),
    ));
  }
}
