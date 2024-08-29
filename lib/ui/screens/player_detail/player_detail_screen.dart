import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';
import 'package:tennis_live_score/controller/player_detail_controller.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';
import 'package:tennis_live_score/ui/screens/player_detail/match_card_widget.dart';
import 'package:tennis_live_score/ui/screens/player_detail/player_rank_widget.dart';

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
    final playerDetailController = Get.put(PlayerDetailController());
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
                    if (value == 0) {
                      // matchDetailController.getOverview();
                    } else if (value == 1) {
                      playerDetailController.getPlayerRank();
                    }
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
                  children: [
                    const MatchCardWidget(),
                    Obx(
                      () => playerDetailController.isLoading.value
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : PlayerRankingWidget(
                              tableRanks: playerDetailController
                                  .playerRank.value.tableRows,
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
