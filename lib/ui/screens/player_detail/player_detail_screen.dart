import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_card.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';

import '../../../constants/color_const.dart';

class PlayerDetailScreen extends StatefulWidget {
  const PlayerDetailScreen({super.key});

  @override
  State<PlayerDetailScreen> createState() => _PlayerDetailScreenState();
}

class _PlayerDetailScreenState extends State<PlayerDetailScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const CustomText(text: ''),
          backgroundColor: primaryColor,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: [
              Icon(
                Icons.person,
                size: 30.sp,
                color: Colors.white,
              ),
              kSizedBoxH15,
              Container(
                height: 40.h,
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.circular(
                    25.r,
                  ),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: tabController,
                  onTap: (value) {
                    // if (value == 0 || value == 2) {
                    //   matchDetailController.getOverview();
                    // } else if (value == 1) {
                    //   matchDetailController.getLineUp();
                    // } else {
                    //   matchDetailController.getPreview();
                    // }
                  },
                  padding: EdgeInsets.all(5.w),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25.r,
                    ),
                    color: secondaryColor,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  dividerColor: Colors.transparent,
                  labelStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: [
                    Tab(
                      text: 'matches'.tr,
                    ),
                    Tab(
                      text: 'apt_ranking'.tr,
                    ),
                  ],
                ),
              ),
              kSizedBoxH15,
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    MatchCardWidget(),
                    PlayerRankingWidget(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class PlayerRankingWidget extends StatelessWidget {
  const PlayerRankingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        padding: 12.w,
        widget: ListView(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 35.w,
                ),
                Expanded(child: CustomText(text: 'Player')),
                CustomText(text: 'PTS')
              ],
            ),
            kSizedBoxH5,
            Divider(
              height: 1.h,
              color: Colors.grey,
            ),
            kSizedBoxH5,
            ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 5.w, bottom: 5.w),
                    child: Row(
                      children: [
                        SizedBox(
                            width: 35.w,
                            child: CustomText(text: "${index + 1}.")),
                        Expanded(child: CustomText(text: "Player name")),
                        CustomText(text: "100"),
                      ],
                    ),
                  );
                }))
          ],
        ));
  }
}

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.only(bottom: 5.h),
        child: CustomCard(
            widget: Column(
          children: [
            CustomText(
              text: 'league',
            ),
            Divider(
              thickness: 1.h,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 1.sw * 0.10,
                  child: CustomText(
                    text: 'player name',
                    maxLines: 2,
                  ),
                ),
                CustomText(text: '0 - 2'),
                SizedBox(
                  width: 1.sw * 0.10,
                  child: CustomText(
                    text: 'player name',
                    maxLines: 2,
                  ),
                )
              ],
            )
          ],
        )),
      );
    });
  }
}
