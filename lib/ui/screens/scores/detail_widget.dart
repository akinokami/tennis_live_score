import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:percent_indicator/percent_indicator.dart';

import '../../../constants/color_const.dart';
import '../../../constants/dimen_const.dart';
import '../../../models/match_detail.dart';
import '../../../utils/function.dart';
import '../../custom_widgets/custom_text.dart';

class DetailWidget extends StatelessWidget {
  final Games? games;
  final void Function()? onTap;
  const DetailWidget({
    super.key,
    required this.games,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
                color: cardColor, borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 CustomText(text: "scoreboard".tr),
                SizedBox(
                  height: 70.h,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: '',
                              fontSize: 10.sp,
                            ),
                            CustomText(
                              text: ((games?.comps ?? []).isNotEmpty)
                                  ? (games?.comps?[0].name ?? '')
                                  : '',
                              fontSize: 10.sp,
                            ),
                            CustomText(
                              text: ((games?.comps ?? []).length > 1)
                                  ? (games?.comps?[1].name ?? '')
                                  : '',
                              fontSize: 10.sp,
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: games?.scoreboard?.columns?.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 7.w),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: games?.scoreboard?.columns?[index]
                                            .sName ??
                                        '',
                                    fontSize: 10.sp,
                                  ),
                                  CustomText(
                                    text: (games?.scoreboard?.columns?[index]
                                                    .scores ??
                                                [])
                                            .isNotEmpty
                                        ? "${games?.scoreboard?.columns?[index].scores?[0] ?? 0}"
                                        : '',
                                    color: games?.scoreboard?.columns?[index]
                                                .winner ==
                                            1
                                        ? secondaryColor
                                        : Colors.white,
                                    fontSize: 10.sp,
                                  ),
                                  CustomText(
                                    text: (games?.scoreboard?.columns?[index]
                                                        .scores ??
                                                    [])
                                                .length >
                                            1
                                        ? "${games?.scoreboard?.columns?[index].scores?[1] ?? 0}"
                                        : '',
                                    color: games?.scoreboard?.columns?[index]
                                                .winner ==
                                            2
                                        ? secondaryColor
                                        : Colors.white,
                                    fontSize: 10.sp,
                                  ),
                                ],
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
          kSizedBoxH20,
          if((games?.statistics?.length??0)>0)  Visibility(
            visible: games?.winner != -1 || games?.active != false,
            child: Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                  color: cardColor, borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   CustomText(text: "stats".tr),
                  kSizedBoxH15,
                  ListView.builder(
                    shrinkWrap: true,
                    reverse: true,
                    itemCount: games?.statistics?.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      int progressValue = int.parse(
                          "${games?.statistics?[index].vals?[1] ?? 0}"
                              .replaceAll(RegExp(r'[^0-9]'), ''));
                      int backgroundValue = int.parse(
                          "${games?.statistics?[index].vals?[0] ?? 0}"
                              .replaceAll(RegExp(r'[^0-9]'), ''));

                      double percentage = (backgroundValue + progressValue) != 0
                          ? progressValue / (backgroundValue + progressValue)
                          : 0.0;

                      return games?.statistics?[index].type != 23
                          ? Padding(
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: CustomText(
                                        text: (games?.statistics?[index].vals ??
                                                    [])
                                                .isNotEmpty
                                            ? "${games?.statistics?[index].vals?[0] ?? 0}"
                                            : "0",
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100.w,
                                    child: CustomText(
                                      textAlign: TextAlign.center,
                                      text: findStatsType(
                                      games?.statistics?[index].type ?? 0),
                                      fontSize: 10.sp,
                                      maxLines: 3,
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: CustomText(
                                        text: (games?.statistics?[index].vals ??
                                                        [])
                                                    .length >
                                                1
                                            ? "${games?.statistics?[index].vals?[1] ?? 0}"
                                            : "0",
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ),
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
                                    text: (games?.statistics?[index].vals ?? [])
                                            .isNotEmpty
                                        ? "${games?.statistics?[index].vals?[0] ?? 0}"
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
                                    percent: percentage,
                                    center:  CustomText(
                                      text: "points_won".tr,
                                    ),
                                    circularStrokeCap: CircularStrokeCap.butt,
                                    backgroundColor: secondaryColor,
                                    progressColor: Colors.green,
                                  ),
                                  CustomText(
                                    text: (games?.statistics?[index].vals ?? [])
                                                .length >
                                            1
                                        ? "${games?.statistics?[index].vals?[1] ?? 0}"
                                        : "0",
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp,
                                  )
                                ],
                              ),
                            );
                    },
                  ),
                  Divider(
                    color: secondaryColor,
                  ),
                  Center(
                      child: InkWell(
                          onTap: onTap,
                          child: Container(
                            //color: secondaryColor,
                            width: 100.w,
                            padding: EdgeInsets.all(5.w),
                            child: Center(
                              child: CustomText(
                                text: "see_all".tr,
                                fontSize: 10.sp,
                              ),
                            ),
                          )))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
