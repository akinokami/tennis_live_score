import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tennis_live_score/constants/color_const.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';
import 'package:tennis_live_score/ui/screens/scores/detail_widget.dart';
import 'package:tennis_live_score/ui/screens/scores/h_2_h_widget.dart';
import 'package:tennis_live_score/ui/screens/scores/point_by_point_widget.dart';
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
  List<String> matchDetailList = ["details".tr, "stats".tr, "point_by_point".tr];
  List<String> statsDetailList = ["match".tr, "set1".tr, "set2".tr];
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
      body: SingleChildScrollView(
        child: Obx(
          () => matchDetailController.isLoading.value
              ? const Center(child: CustomCircleLoading())
              : (matchDetailController.matchDetail.value.games ?? []).isEmpty
                  ? const Center(child: CustomText(text: 'No data found.'))
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(color: greyColor),
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 1.sw * 0.25,
                                    child: CustomText(
                                      text: ((matchDetailController.matchDetail
                                                      .value.games?[0].comps ??
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
                                      textAlign: TextAlign.right,
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
                                              -1
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
                                                                        .games?[
                                                                            0]
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
                                        visible: matchDetailController
                                                .matchDetail
                                                .value
                                                .games?[0]
                                                .winner !=
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
                                  SizedBox(
                                    width: 1.sw * 0.25,
                                    child: CustomText(
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
                                    tabs: const [
                                      Tab(text: "Match"),
                                      Tab(text: "H2H"),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1.4,
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return TabBarView(
                                  controller: tabController,
                                  children: [
                                    Obx(() => Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            kSizedBoxH10,
                                            Container(
                                              width: constraints.maxWidth,
                                              color: cardColor,
                                              height: 35.h,
                                              child: Center(
                                                child: ListView.builder(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Obx(() =>
                                                        GestureDetector(
                                                          onTap: () {
                                                            matchDetailController
                                                                .changeIndex(
                                                                    index);
                                                          },
                                                          child: Container(
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: matchDetailController.selectedIndex.value == index
                                                                          ? secondaryColor
                                                                          : primaryColor),
                                                                  borderRadius:
                                                                      BorderRadius.circular(50
                                                                          .r)),
                                                              margin:
                                                                  EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          15.w,
                                                                      vertical:
                                                                          5.h),
                                                              padding: EdgeInsets.symmetric(
                                                                  horizontal: 10.w,
                                                                  vertical: 5.h),
                                                              child: Center(child: CustomText(text: matchDetailList[index]))),
                                                        ));
                                                  },
                                                  itemCount:
                                                      matchDetailList.length,
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
                                                    .matchDetail
                                                    .value
                                                    .games?[0],
                                                onTap: () {
                                                  matchDetailController
                                                      .changeIndex(1);
                                                },
                                              ),
///stats
                                            if (matchDetailController
                                                    .selectedIndex.value ==
                                                1)
                                              SizedBox(
                                                height: 35.h,
                                                child: ListView.builder(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Obx(
                                                        () => GestureDetector(
                                                              onTap: () {
                                                                matchDetailController
                                                                    .changeStatIndex(
                                                                        index);
                                                              },
                                                              child: Container(
                                                                  decoration: BoxDecoration(
                                                                      color: matchDetailController.selectedStatIndex.value == index
                                                                          ? secondaryColor
                                                                          : primaryColor,
                                                                      border: Border.all(
                                                                          color: matchDetailController.selectedStatIndex.value == index
                                                                              ? secondaryColor
                                                                              : primaryColor),
                                                                      borderRadius: BorderRadius.circular(50
                                                                          .r)),
                                                                  margin: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          15.w,
                                                                      vertical:
                                                                          5.h),
                                                                  padding:
                                                                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                                                                  child: Center(child: CustomText(text: statsDetailList[index]))),
                                                            ));
                                                  },
                                                  itemCount:
                                                      statsDetailList.length,
                                                  shrinkWrap: true,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                ),
                                              ),
                                            if (matchDetailController
                                                    .selectedIndex.value ==
                                                1)
                                              Container(
                                                padding: EdgeInsets.all(10.w),
                                                decoration: BoxDecoration(
                                                    color: cardColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const CustomText(
                                                        text: "Service"),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text: "9",
                                                              fontSize: 10.sp,
                                                            ))),
                                                        SizedBox(
                                                            width: 200.w,
                                                            child: Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "Aces",
                                                                    fontSize: 10
                                                                        .sp))),
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: Center(
                                                                child: CustomText(
                                                                    text: "1",
                                                                    fontSize: 10
                                                                        .sp))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: Center(
                                                                child: CustomText(
                                                                    text: "1",
                                                                    fontSize: 10
                                                                        .sp))),
                                                        SizedBox(
                                                            width: 200.w,
                                                            child: Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "Double Faults",
                                                                    fontSize: 10
                                                                        .sp))),
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: Center(
                                                                child: CustomText(
                                                                    text: "1",
                                                                    fontSize: 10
                                                                        .sp))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "54%(30/56)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 150.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "1st Serve %",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "72%(38/53)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "83%(25/30)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 150.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "1st Service Points Won",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "53%(20/38)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "62%(16/26)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 150.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "2nd Service Points Won",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text: "53%(8/15)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text: "100%(7/7)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 150.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "Break Points Saved %",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text: "43%(3/7)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            if (matchDetailController
                                                .selectedIndex.value ==
                                                1) kSizedBoxH20,
                                            if (matchDetailController
                                                    .selectedIndex.value ==
                                                1)
                                              Container(
                                                padding: EdgeInsets.all(10.w),
                                                decoration: BoxDecoration(
                                                    color: cardColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const CustomText(
                                                        text: "Return"),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "27%(4/7)",
                                                                    fontSize:
                                                                        10.sp,
                                                                    maxLines:
                                                                        2))),
                                                        SizedBox(
                                                            width: 150.w,
                                                            child: Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "Break Points Won",
                                                                    fontSize:
                                                                        10.sp,
                                                                    maxLines:
                                                                        2))),
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text: "0%(0/7)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "47%(18/38)",
                                                                    fontSize:
                                                                        10.sp,
                                                                    maxLines:
                                                                        2))),
                                                        SizedBox(
                                                            width: 150.w,
                                                            child: Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "1st Return Points Won",
                                                                    fontSize:
                                                                        10.sp,
                                                                    maxLines:
                                                                        2))),
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "17%(5/30)",
                                                                    fontSize:
                                                                        10.sp,
                                                                    maxLines:
                                                                        2))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                  ],
                                                ),
                                              ),
                                            if (matchDetailController
                                                .selectedIndex.value ==
                                                1) kSizedBoxH20,
                                            if (matchDetailController
                                                        .selectedStatIndex
                                                        .value ==
                                                    0 &&
                                                matchDetailController
                                                        .selectedIndex.value ==
                                                    1)
                                              Container(
                                                padding: EdgeInsets.all(10.w),
                                                decoration: BoxDecoration(
                                                    color: cardColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const CustomText(
                                                        text: "Points"),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomText(
                                                          text: "66",
                                                          color: secondaryColor,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20.sp,
                                                        ),
                                                        CircularPercentIndicator(
                                                          radius: 50.0,
                                                          animation: true,
                                                          animationDuration:
                                                              1200,
                                                          lineWidth: 5.0,
                                                          percent: 0.4,
                                                          center:
                                                              const CustomText(
                                                            text: "Points Won",
                                                          ),
                                                          circularStrokeCap:
                                                              CircularStrokeCap
                                                                  .butt,
                                                          backgroundColor:
                                                              secondaryColor,
                                                          progressColor:
                                                              Colors.green,
                                                        ),
                                                        CustomText(
                                                          text: "43",
                                                          color: Colors.green,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20.sp,
                                                        )
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: const Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "9"))),
                                                        SizedBox(
                                                            width: 200.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "Max Points in a Row",
                                                              fontSize: 10.sp,
                                                            ))),
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: const Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "1"))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: const Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "1"))),
                                                        SizedBox(
                                                            width: 200.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "Unforced Errors",
                                                              fontSize: 10.sp,
                                                            ))),
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: const Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "1"))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "54%(30/56)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 150.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "Service Points",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "72%(38/53)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "83%(25/30)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 150.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "Return Points Won",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "53%(20/38)",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text: "66",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 150.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "Total Points Won",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                        SizedBox(
                                                            width: 80.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text: "43",
                                                              fontSize: 10.sp,
                                                              maxLines: 2,
                                                            ))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                  ],
                                                ),
                                              ),
                                            if (matchDetailController
                                                .selectedStatIndex
                                                .value ==
                                                0 &&
                                                matchDetailController
                                                    .selectedIndex.value ==
                                                    1) kSizedBoxH20,
                                            if (matchDetailController
                                                    .selectedIndex.value ==
                                                1)
                                              Container(
                                                padding: EdgeInsets.all(10.w),
                                                decoration: BoxDecoration(
                                                    color: cardColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const CustomText(
                                                        text: "Games"),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: const Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "9"))),
                                                        SizedBox(
                                                            width: 200.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "Service Games",
                                                              fontSize: 10.sp,
                                                            ))),
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: const Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "1"))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: const Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "1"))),
                                                        SizedBox(
                                                            width: 200.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "Max Games In A Row",
                                                              fontSize: 10.sp,
                                                            ))),
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: const Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "1"))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: const Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "9"))),
                                                        SizedBox(
                                                            width: 200.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "Return Games Won",
                                                              fontSize: 10.sp,
                                                            ))),
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: const Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "1"))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: const Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "9"))),
                                                        SizedBox(
                                                            width: 200.w,
                                                            child: Center(
                                                                child:
                                                                    CustomText(
                                                              text:
                                                                  "Total Games Won",
                                                              fontSize: 10.sp,
                                                            ))),
                                                        SizedBox(
                                                            width: 50.w,
                                                            child: const Center(
                                                                child: CustomText(
                                                                    text:
                                                                        "1"))),
                                                      ],
                                                    ),
                                                    kSizedBoxH15,
                                                  ],
                                                ),
                                              ),
                                            if(matchDetailController.selectedIndex.value==2)
                                              PointByPointWidget(pointByPoint: matchDetailController.pointByPoint.value,)
                                          ],
                                        )),
                                    H2HScreen(
                                      lastMatches: matchDetailController
                                          .matchDetail
                                          .value
                                          .games?[0]
                                          .lastMatches,
                                      competitions: matchDetailController
                                          .matchDetail
                                          .value
                                          .competitions,
                                      countries: matchDetailController
                                          .matchDetail
                                          .value
                                          .countries,
                                    )
                                  ]);
                            },
                          ),
                        )
                      ],
                    ),
        ),
      ),
    );
  }
}
