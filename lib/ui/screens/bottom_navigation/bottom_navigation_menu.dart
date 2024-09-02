import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tennis_live_score/controller/bottom_nav_controller.dart';
import 'package:tennis_live_score/ui/screens/scores/scores_screen.dart';
import 'package:tennis_live_score/ui/screens/scores/search_screen.dart';
import 'package:tennis_live_score/ui/screens/settings/settings_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../constants/color_const.dart';
import '../../../utils/global.dart';
import '../../custom_widgets/custom_text.dart';
import '../standing/standing_screen.dart';

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({super.key});

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {

  bool isAccepted = false;
  bool isChecked = false;
  String first = '';
  @override
  void initState() {
    super.initState();
    final box = GetStorage();
    first = box.read('first') ?? '';

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        if (first == '') {
          if (context.mounted) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (ctx) => Builder(builder: (context) {
                return StatefulBuilder(
                  builder: (context, StateSetter setState) {
                    return AlertDialog(
                      surfaceTintColor: whiteColor,
                      backgroundColor: whiteColor,
                      content: SizedBox(
                        height: 1.sh * 0.80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SingleChildScrollView(
                              child: SizedBox(
                                  height: 1.sh * 0.65,
                                  width: double.infinity,
                                  child: WebViewWidget(
                                      controller: WebViewController()
                                        ..loadHtmlString(Global.language!="hi"?Global.policyEn:Global.policyIndia))),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  activeColor: secondaryColor,
                                  side: BorderSide(
                                    width: 1.5,
                                    color: isChecked ? secondaryColor : Colors.black,
                                  ),
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                      if (isChecked) {
                                        isAccepted = true;
                                      } else {
                                        isAccepted = false;
                                      }
                                    });
                                  },
                                ),
                                 CustomText(
                                  text: 'agree'.tr,
                                   color: secondaryColor,
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateColor.resolveWith((states) =>
                                  isAccepted ? secondaryColor : greyColor)),
                              // ignore: sort_child_properties_last
                              child: CustomText(
                                text: "accept".tr,
                                color: whiteColor,
                              ),
                              onPressed: isAccepted
                                  ? () async {
                                final box = GetStorage();
                                box.write('first', 'notfirst');
                                Navigator.pop(context);
                              }
                                  : null,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            );
          }
        }
      } catch (e) {
        // print("Error fetching SharedPreferences: $e");
      }
    });
  }
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
                  Icons.table_chart,
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
