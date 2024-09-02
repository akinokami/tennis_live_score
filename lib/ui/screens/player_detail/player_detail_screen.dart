import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';
import 'package:tennis_live_score/controller/player_detail_controller.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';
import 'package:tennis_live_score/ui/screens/player_detail/match_card_widget.dart';
import 'package:tennis_live_score/ui/screens/player_detail/player_rank_widget.dart';

import '../../../constants/color_const.dart';
import '../../../utils/function.dart';
import '../../custom_widgets/custom_loading.dart';

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
              Obx(
                () => Column(
                  children: [
                  if((playerDetailController
                      .playerMatch.value.header?.entity?.name??"").isNotEmpty)  Container(
                      width: 40.w,
                      height: 40.w,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child:Center(
                        child: CustomText(text:"${(playerDetailController
                            .playerMatch.value.header?.entity?.name ??
                            '').split("")[0]}" ,fontSize: 14.sp,fontWeight: FontWeight.bold,color: secondaryColor,),
                      )

                    ),
                    // child: Image.network(
                    //   imageUrl(
                    //       "Competitors:default${playerDetailController.playerMatch.value.header?.entity?.iD}.png",
                    //       "Competitors",
                    //       playerDetailController
                    //               .playerMatch.value.header?.entity?.iD ??
                    //           0),
                    //   fit: BoxFit.cover,
                    //   width: 40.w,
                    //   height: 40.w,
                    //   errorBuilder: (context, error, stackTrace) => Container(
                    //     decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(100.r)),
                    //     child: Icon(
                    //       Icons.person,
                    //       size: 40.sp,
                    //     ),
                    //   ),
                    // ),
                    kSizedBoxH10,
                    CustomText(
                        text: playerDetailController
                                .playerMatch.value.header?.entity?.name ??
                            ''),
                  ],
                ),
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
                      playerDetailController.getPlayerMatches();
                    } else if (value == 1) {
                      if (playerDetailController.mainCompId.value != 0) {
                        playerDetailController.getPlayerRank();
                      }
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
                      text: 'atp_ranking'.tr,
                    ),
                  ],
                ),
              ),
              kSizedBoxH15,
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Obx(
                      () => playerDetailController.isLoading.value
                          ? const Center(child: CustomCircleLoading())
                          : MatchCardWidget(
                              sections: playerDetailController.sections.value,
                            ),
                    ),
                    Obx(
                      () => playerDetailController.isLoading.value
                          ? const Center(child: CustomCircleLoading())
                          : playerDetailController.mainCompId.value != 0
                              ? PlayerRankingWidget(
                                  tableRanks: playerDetailController
                                      .playerRank.value.tableRows,
                                )
                              : Center(child: CustomText(text: 'no_data'.tr)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
