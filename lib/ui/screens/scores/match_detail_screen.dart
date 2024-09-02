import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/color_const.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';
import 'package:tennis_live_score/ui/screens/player_detail/player_detail_screen.dart';
import 'package:tennis_live_score/ui/screens/scores/detail_widget.dart';
import 'package:tennis_live_score/ui/screens/scores/h_2_h_widget.dart';
import 'package:tennis_live_score/ui/screens/scores/point_by_point_widget.dart';
import 'package:tennis_live_score/ui/screens/scores/stats_widget.dart';
import 'package:tennis_live_score/utils/function.dart';

import '../../../controller/match_detail_controller.dart';
import '../../custom_widgets/custom_loading.dart';
import '../../custom_widgets/custom_text.dart';

class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({
    super.key,
  });

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  List<String> matchDetailList = [
    "details".tr,
    "stats".tr,
    "point_by_point".tr
  ];

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final matchDetailController = Get.put(MatchDetailController());
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: greyColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: whiteColor),
        title: Obx(
          () => matchDetailController.isLoading.value
              ? const CustomText(text: '')
              : CustomText(
                  text: (matchDetailController.matchDetail.value.games ?? [])
                          .isNotEmpty
                      ? (matchDetailController.matchDetail.value.games?[0]
                              .competitionDisplayName ??
                          '')
                      : '',
                  color: whiteColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold),
        ),
      ),
      body: Obx(
        () => matchDetailController.isLoading.value
            ? const Center(child: CustomCircleLoading())
            : (matchDetailController.matchDetail.value.games ?? []).isEmpty
                ? Center(child: CustomText(text: 'no_data'.tr))
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(color: greyColor),
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if ((matchDetailController.matchDetail.value
                                                .games?[0].comps ??
                                            [])
                                        .isNotEmpty) {
                                      Get.to(() => const PlayerDetailScreen(),
                                          arguments: {
                                            'mainCompId': matchDetailController
                                                    .matchDetail
                                                    .value
                                                    .games?[0]
                                                    .comps?[0]
                                                    .mainComp ??
                                                0,
                                            'competitorId':
                                                matchDetailController
                                                        .matchDetail
                                                        .value
                                                        .games?[0]
                                                        .comps?[0]
                                                        .iD ??
                                                    0
                                          });
                                    }
                                  },
                                  child: SizedBox(
                                    width: 1.sw * 0.25,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.r),
                                          child: Image.network(
                                            (matchDetailController
                                                            .matchDetail
                                                            .value
                                                            .games?[0]
                                                            .comps ??
                                                        [])
                                                    .isNotEmpty
                                                ? imageUrl(
                                                    "Competitors:default${matchDetailController.matchDetail.value.games?[0].comps?[0].iD}.png",
                                                    "Competitors",
                                                    matchDetailController
                                                            .matchDetail
                                                            .value
                                                            .games?[0]
                                                            .comps?[0]
                                                            .iD ??
                                                        0)
                                                : "",
                                            fit: BoxFit.cover,
                                            width: 25.w,
                                            height: 25.w,
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.r)),
                                              child: Icon(
                                                Icons.person,
                                                size: 25.sp,
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomText(
                                          text: ((matchDetailController
                                                          .matchDetail
                                                          .value
                                                          .games?[0]
                                                          .comps ??
                                                      [])
                                                  .isNotEmpty)
                                              ? (matchDetailController
                                                      .matchDetail
                                                      .value
                                                      .games?[0]
                                                      .comps?[0]
                                                      .name ??
                                                  '')
                                              : '',
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    CustomText(
                                      text: subStringBeforeSpace(
                                          matchDetailController.matchDetail
                                                  .value.games?[0].sTime ??
                                              ''),
                                    ),
                                    matchDetailController.matchDetail.value
                                                    .games?[0].winner ==
                                                -1 &&
                                            matchDetailController.matchDetail
                                                    .value.games?[0].active ==
                                                false
                                        ? CustomText(
                                            text: subStringAfterSpace(
                                                matchDetailController
                                                        .matchDetail
                                                        .value
                                                        .games?[0]
                                                        .sTime ??
                                                    ''))
                                        : Row(
                                            children: [
                                              CustomText(
                                                  text: ((matchDetailController
                                                                  .matchDetail
                                                                  .value
                                                                  .games?[0]
                                                                  .scrs ??
                                                              [])
                                                          .isNotEmpty)
                                                      ? (matchDetailController
                                                                  .matchDetail
                                                                  .value
                                                                  .games?[0]
                                                                  .scrs?[0]) !=
                                                              -1.0
                                                          ? "${matchDetailController.matchDetail.value.games?[0].scrs?[0].toStringAsFixed(0)}"
                                                          : '-'
                                                      : '-'),
                                              const CustomText(
                                                text: " - ",
                                              ),
                                              CustomText(
                                                  text: ((matchDetailController
                                                                      .matchDetail
                                                                      .value
                                                                      .games?[0]
                                                                      .scrs ??
                                                                  [])
                                                              .length >
                                                          1)
                                                      ? (matchDetailController
                                                                  .matchDetail
                                                                  .value
                                                                  .games?[0]
                                                                  .scrs?[1]) !=
                                                              -1.0
                                                          ? "${matchDetailController.matchDetail.value.games?[0].scrs?[1].toStringAsFixed(0)}"
                                                          : '-'
                                                      : '-'),
                                            ],
                                          ),
                                    Visibility(
                                      visible: matchDetailController.matchDetail
                                              .value.games?[0].winner !=
                                          -1,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.w, vertical: 1.h),
                                        decoration: BoxDecoration(
                                            color: secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(20.r)),
                                        child: const CustomText(
                                          text: "Ended",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    if ((matchDetailController.matchDetail.value
                                                    .games?[0].comps ??
                                                [])
                                            .length >
                                        1) {
                                      Get.to(() => const PlayerDetailScreen(),
                                          arguments: {
                                            'mainCompId': matchDetailController
                                                    .matchDetail
                                                    .value
                                                    .games?[0]
                                                    .comps?[1]
                                                    .mainComp ??
                                                0,
                                            'competitorId':
                                                matchDetailController
                                                        .matchDetail
                                                        .value
                                                        .games?[0]
                                                        .comps?[1]
                                                        .iD ??
                                                    0
                                          });
                                    }
                                  },
                                  child: SizedBox(
                                    width: 1.sw * 0.25,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.r),
                                          child: Image.network(
                                            (matchDetailController
                                                                .matchDetail
                                                                .value
                                                                .games?[0]
                                                                .comps ??
                                                            [])
                                                        .length >
                                                    1
                                                ? imageUrl(
                                                    "Competitors:default${matchDetailController.matchDetail.value.games?[0].comps?[1].iD}.png",
                                                    "Competitors",
                                                    matchDetailController
                                                            .matchDetail
                                                            .value
                                                            .games?[0]
                                                            .comps?[1]
                                                            .iD ??
                                                        0)
                                                : "",
                                            fit: BoxFit.cover,
                                            width: 25.w,
                                            height: 25.w,
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.r)),
                                              child: Icon(
                                                Icons.person,
                                                size: 25.sp,
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomText(
                                          text: ((matchDetailController
                                                              .matchDetail
                                                              .value
                                                              .games?[0]
                                                              .comps ??
                                                          [])
                                                      .length >
                                                  1)
                                              ? (matchDetailController
                                                      .matchDetail
                                                      .value
                                                      .games?[0]
                                                      .comps?[1]
                                                      .name ??
                                                  '')
                                              : '',
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50.h,
                              child: TabBar(
                                  controller: tabController,
                                  dividerColor: secondaryColor,
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  unselectedLabelColor: whiteColor,
                                  labelColor: secondaryColor,
                                  indicatorColor: secondaryColor,
                                  tabs: [
                                    Tab(text: "match".tr),
                                    Tab(text: "h2h".tr),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(controller: tabController, children: [
                          Obx(() => Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  kSizedBoxH10,
                                  Container(
                                    color: cardColor,
                                    height: 35.h,
                                    child: Center(
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Obx(() => GestureDetector(
                                                onTap: () {
                                                  matchDetailController
                                                      .changeIndex(index);
                                                  if (index == 1) {
                                                    matchDetailController
                                                        .getStats();
                                                  } else if (index == 2) {
                                                    matchDetailController
                                                        .getPointByPoint();
                                                  }
                                                },
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: matchDetailController
                                                                        .selectedIndex
                                                                        .value ==
                                                                    index
                                                                ? secondaryColor
                                                                : primaryColor),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                50.r)),
                                                    margin: EdgeInsets.symmetric(
                                                        horizontal: 15.w,
                                                        vertical: 5.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10.w,
                                                            vertical: 5.h),
                                                    child:
                                                        Center(child: CustomText(text: matchDetailList[index]))),
                                              ));
                                        },
                                        itemCount: matchDetailList.length,
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                      ),
                                    ),
                                  ),
                                  kSizedBoxH10,

                                  ///Detail
                                  if (matchDetailController
                                          .selectedIndex.value ==
                                      0)
                                    DetailWidget(
                                      games: matchDetailController
                                          .matchDetail.value.games?[0],
                                      onTap: () {
                                        matchDetailController.changeIndex(1);
                                        matchDetailController.getStats();
                                      },
                                    ),

                                  ///stats
                                  if (matchDetailController
                                          .selectedIndex.value ==
                                      1)
                                    matchDetailController.isLoadingOne.value
                                        ? const Center(
                                            child: CustomCircleLoading(),
                                          )
                                        : StatsWidget(
                                            matchDetailController:
                                                matchDetailController,
                                            stats: matchDetailController
                                                .stats.value),
                                  if (matchDetailController
                                          .selectedIndex.value ==
                                      2)
                                    matchDetailController.isLoadingOne.value
                                        ? const Center(
                                            child: CustomCircleLoading(),
                                          )
                                        : PointByPointWidget(
                                            pointByPoint: matchDetailController
                                                .pointByPoint.value,
                                          )
                                ],
                              )),
                          H2HScreen(
                            lastMatches: matchDetailController
                                .matchDetail.value.games?[0].lastMatches,
                            competitions: matchDetailController
                                .matchDetail.value.competitions,
                            countries: matchDetailController
                                .matchDetail.value.countries,
                          )
                        ]),
                      )
                    ],
                  ),
      ),
    );
  }
}
