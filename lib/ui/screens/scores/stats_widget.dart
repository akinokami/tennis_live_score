import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';
import 'package:tennis_live_score/utils/function.dart';

import '../../../constants/color_const.dart';
import '../../../constants/dimen_const.dart';
import '../../../controller/match_detail_controller.dart';
import '../../../models/stats.dart';

class StatsWidget extends StatelessWidget {
  const StatsWidget({
    super.key,
    required this.matchDetailController,
    required this.stats,
  });

  final MatchDetailController matchDetailController;
  final Stats stats;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          SizedBox(
            height: 35.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stats.statisticsFilters?.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Obx(() => GestureDetector(
                      onTap: () {
                        matchDetailController
                            .selectStats(stats.statisticsFilters?[index]);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color:
                                  matchDetailController.selectedStats.value?.iD ==
                                          stats.statisticsFilters?[index].iD
                                      ? secondaryColor
                                      : primaryColor,
                              border: Border.all(
                                  color: matchDetailController
                                              .selectedStats.value?.iD ==
                                          stats.statisticsFilters?[index].iD
                                      ? secondaryColor
                                      : primaryColor),
                              borderRadius: BorderRadius.circular(50.r)),
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: Center(child: CustomText(text: stats.statisticsFilters?[index].name ?? ''))),
                    ));
              },
            ),
          ),
          kSizedBoxH10,
          Container(
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
                color: cardColor, borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(text: "Stats"),
                kSizedBoxH15,
                Obx(
                  () => ListView.builder(
                      shrinkWrap: true,
                      itemCount: matchDetailController
                          .selectedStatics.value?.statistics?.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return matchDetailController.selectedStatics.value
                                    ?.statistics?[index].type !=
                                23
                            ? Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Center(
                                            child: CustomText(
                                      text: (matchDetailController
                                                      .selectedStatics
                                                      .value
                                                      ?.statistics?[index]
                                                      .vals ??
                                                  [])
                                              .isNotEmpty
                                          ? "${matchDetailController.selectedStatics.value?.statistics?[index].vals?[0] ?? 0}"
                                          : "0",
                                      fontSize: 10.sp,
                                    ))),
                                    Expanded(
                                        child: Center(
                                            child: CustomText(
                                      text: findStatsType(
                                        matchDetailController
                                                .selectedStatics
                                                .value
                                                ?.statistics?[index]
                                                .type ??
                                            0,
                                      ),
                                      fontSize: 10.sp,
                                    ))),
                                    Expanded(
                                        child: Center(
                                      child: CustomText(
                                        text: (matchDetailController
                                                            .selectedStatics
                                                            .value
                                                            ?.statistics?[index]
                                                            .vals ??
                                                        [])
                                                    .length >
                                                1
                                            ? "${matchDetailController.selectedStatics.value?.statistics?[index].vals?[1] ?? 0}"
                                            : "0",
                                        fontSize: 10.sp,
                                      ),
                                    )),
                                  ],
                                ),
                              )
                            : Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: (matchDetailController
                                                      .selectedStatics
                                                      .value
                                                      ?.statistics?[index]
                                                      .vals ??
                                                  [])
                                              .isNotEmpty
                                          ? "${matchDetailController.selectedStatics.value?.statistics?[index].vals?[0] ?? 0}"
                                          : "0",
                                      color: secondaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp,
                                    ),
                                    CircularPercentIndicator(
                                      radius: 50.0,
                                      animation: true,
                                      animationDuration: 1200,
                                      lineWidth: 5.0,
                                      percent: 0.4,
                                      center: const CustomText(
                                        text: "Points Won",
                                      ),
                                      circularStrokeCap: CircularStrokeCap.butt,
                                      backgroundColor: secondaryColor,
                                      progressColor: Colors.green,
                                    ),
                                    CustomText(
                                      text: (matchDetailController
                                                          .selectedStatics
                                                          .value
                                                          ?.statistics?[index]
                                                          .vals ??
                                                      [])
                                                  .length >
                                              1
                                          ? "${matchDetailController.selectedStatics.value?.statistics?[index].vals?[1] ?? 0}"
                                          : "0",
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp,
                                    )
                                  ],
                                ),
                              );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
