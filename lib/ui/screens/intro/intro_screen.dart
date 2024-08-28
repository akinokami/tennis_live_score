import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/color_const.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';
import 'package:tennis_live_score/constants/images_const.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_follow_widget.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';
import 'package:tennis_live_score/ui/screens/intro/select_teams_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
          backgroundColor: primaryColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 100.h,
            backgroundColor: primaryColor,
            title: CustomText(
              text: "Select one or more Leagues to follow",
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
              color: whiteColor,
              maxLines: 2,
            ),
            bottom: TabBar(
              dividerColor: primaryColor,
              indicatorColor: secondaryColor,
              labelColor: secondaryColor,
              unselectedLabelColor: lightWhiteColor,
              tabs: const [
                Tab(text: 'Popular'),
                Tab(text: 'Football'),
                Tab(text: 'Basketball'),
                Tab(text: 'Tennis'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: " Top",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: greyColor,
                    ),
                    kSizedBoxH10,
                    Expanded(
                      child: GridView.builder(
                          itemCount: 9,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 0.w,
                            crossAxisSpacing: 0.h,
                            childAspectRatio: 1.2,
                          ),
                          itemBuilder: (context, index) {
                            return const CustomFollowWidget(
                                label: "Premier League",
                                image: logoImg,
                                subLabel: "England");
                          }),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0.w,
                    crossAxisSpacing: 0.h,
                    childAspectRatio: 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return const CustomFollowWidget(
                        label: "Premier League",
                        image: logoImg,
                        subLabel: "England");
                  }),
              GridView.builder(
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0.w,
                    crossAxisSpacing: 0.h,
                    childAspectRatio: 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return const CustomFollowWidget(
                        label: "Premier League",
                        image: logoImg,
                        subLabel: "England");
                  }),
              GridView.builder(
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0.w,
                    crossAxisSpacing: 0.h,
                    childAspectRatio: 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return const CustomFollowWidget(
                        label: "Premier League",
                        image: logoImg,
                        subLabel: "England");
                  }),
            ],
          ),
          bottomNavigationBar: Container(
            height: 50.h,
            color: primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const SelectTeamsScreen());
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
          )),
    );
  }
}
