import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/images_const.dart';
import 'package:tennis_live_score/ui/screens/intro/intro_screen.dart';

import '../../../constants/color_const.dart';
import '../../../constants/dimen_const.dart';
import '../../custom_widgets/custom_follow_widget.dart';
import '../../custom_widgets/custom_text.dart';
import '../bottom_navigation/bottom_navigation_menu.dart';

class SelectTeamsScreen extends StatelessWidget {
  const SelectTeamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          toolbarHeight: 80.h,
          backgroundColor: primaryColor,
          automaticallyImplyLeading: false,
          title: CustomText(
            text: "Select one or more Teams to follow",
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
            color: whiteColor,
            maxLines: 2,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.ac_unit,
                    color: whiteColor,
                  ),
                  kSizedBoxW5,
                  CustomText(
                      text: "Premier League",
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                  CustomText(
                    text: "- England(20)",
                    color: greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              kSizedBoxH5,
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  mainAxisSpacing: 2.h,
                  crossAxisSpacing: 2.w,
                ),
                itemBuilder: (context, index) {
                  return CustomFollowWidget(
                      label: "Manchester City", image: logoImg);
                },
              ),
              kSizedBoxH20,
              Row(
                children: [
                  Icon(
                    Icons.ac_unit,
                    color: whiteColor,
                  ),
                  kSizedBoxW5,
                  CustomText(
                      text: "NBA",
                      color: greyColor,
                      fontWeight: FontWeight.bold),
                  CustomText(
                    text: "- USA(30)",
                    color: greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              kSizedBoxH5,
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  mainAxisSpacing: 2.h,
                  crossAxisSpacing: 2.w,
                ),
                itemBuilder: (context, index) {
                  return CustomFollowWidget(
                      label: "Manchester City", image: logoImg);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 50.h,
          color: primaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    color: greyColor,
                    size: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const IntroScreen());
                    },
                    child: CustomText(
                      text: "Back",
                      color: greyColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.offAll(() => BottomNavigationMenu());
                    },
                    child: CustomText(
                      text: "Next",
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: secondaryColor,
                    size: 20.w,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
