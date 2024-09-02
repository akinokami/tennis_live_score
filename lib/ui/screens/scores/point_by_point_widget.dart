import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/color_const.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';
import 'package:tennis_live_score/models/point_by_point.dart';

import '../../../controller/match_detail_controller.dart';
import '../../custom_widgets/custom_text.dart';

class PointByPointWidget extends StatelessWidget {
  const PointByPointWidget({super.key, required this.pointByPoint});
  final PointByPoint pointByPoint;
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MatchDetailController>();
    return Expanded(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10.w),
            width: MediaQuery.of(context).size.width,
            height: 40.h,
            child: Center(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: pointByPoint.sets?.length,
                  itemBuilder: (context, index) {
                    print("xxxxx ${pointByPoint.sets?[index].name} ");
                    return Obx(
                      () => (pointByPoint.sets?[index].name?.isEmpty==true)?
                      CustomText(text: "no_data".tr):
                      GestureDetector(
                        onTap: () {
                          controller.changePBPIndex(index);
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10.w),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          decoration: BoxDecoration(
                            color: controller.selectedPBPIndex.value == index
                                ? secondaryColor
                                : cardColor,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Center(
                              child: CustomText(
                            text: pointByPoint.sets?[index].name ?? "",
                            fontSize: 8.sp,
                          )),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.w),
            color: cardColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "point_by_point".tr,
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                ),
                Obx(
                  () => SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15.h, horizontal: 8.w),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: pointByPoint
                                  .sets?[controller.selectedPBPIndex.value]
                                  .pointsByPointGames
                                  ?.length ??
                              0,
                          itemBuilder: (context, index) {
                            var pbpData = pointByPoint
                                .sets?[controller.selectedPBPIndex.value]
                                .pointsByPointGames;
                            List<Points>? normalData;
                            List<Points>? firstData;
                            List<Points>? secondData;
                            if ((pbpData?[pbpData.length - (index + 1)]
                                        .points
                                        ?.length ??
                                    0) >
                                6) {
                              firstData = pbpData?[pbpData.length - (index + 1)]
                                  .points
                                  ?.take(6)
                                  .toList();
                              print("zzzzzzx ${firstData?.length}");
                              secondData =
                                  pbpData?[pbpData.length - (index + 1)]
                                      .points
                                      ?.skip(6)
                                      .toList();
                            } else {
                              normalData =
                                  pbpData?[pbpData.length - (index + 1)].points;
                            }
                            return Container(
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 80.w,
                                        child: CustomText(
                                            maxLines: 2,
                                            fontSize: 8.sp,
                                            text: controller.matchDetail.value
                                                    .games?[0].comps?[0].name ??
                                                ''),
                                      ),
                                      kSizedBoxW10,
                                      CustomText(
                                          fontSize: 8.sp,
                                          text: pbpData?[pbpData.length -
                                                      (index + 1)]
                                                  .score?[0]
                                                  .toString() ??
                                              ""),
                                      kSizedBoxW30,
                                      if ((normalData?.length ?? 0) > 0)
                                        SizedBox(
                                            height: 15.h,
                                            child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                shrinkWrap: true,
                                                itemCount:
                                                    normalData?.length ?? 0,
                                                itemBuilder: (context, index1) {
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 8.w),
                                                    child: SizedBox(
                                                      width: 20.w,
                                                      child: CustomText(
                                                          fontSize: 10.sp,
                                                          text:
                                                              "${normalData?[index1].score?[0] ?? ""}"),
                                                    ),
                                                  );
                                                })),
                                      if ((firstData?.length ?? 0) > 0)
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                height: 15.h,
                                                child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    shrinkWrap: true,
                                                    itemCount:
                                                        firstData?.length ?? 0,
                                                    itemBuilder:
                                                        (context, index2) {
                                                      return Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 8.w),
                                                        child: SizedBox(
                                                          width: 20.w,
                                                          child: CustomText(
                                                              fontSize: 10.sp,
                                                              text:
                                                                  "${firstData?[index2].score?[0] ?? ""}"),
                                                        ),
                                                      );
                                                    })),
                                            SizedBox(
                                                height: 15.h,
                                                child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    shrinkWrap: true,
                                                    itemCount:
                                                        secondData?.length ?? 0,
                                                    itemBuilder:
                                                        (context, index3) {
                                                      return Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 8.w),
                                                        child: SizedBox(
                                                          width: 20.w,
                                                          child: CustomText(
                                                              fontSize: 10.sp,
                                                              text:
                                                                  "${secondData?[index3].score?[0] ?? ""}"),
                                                        ),
                                                      );
                                                    }))
                                          ],
                                        )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 80.w,
                                        child: CustomText(
                                            maxLines: 2,
                                            fontSize: 8.sp,
                                            text: controller.matchDetail.value
                                                    .games?[0].comps?[1].name ??
                                                ''),
                                      ),
                                      kSizedBoxW10,
                                      CustomText(
                                          fontSize: 8.sp,
                                          text: pbpData?[pbpData.length -
                                                      (index + 1)]
                                                  .score?[1]
                                                  .toString() ??
                                              ""),
                                      kSizedBoxW30,
                                      if ((normalData?.length ?? 0) > 0)
                                        SizedBox(
                                            height: 15.h,
                                            child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                shrinkWrap: true,
                                                itemCount:
                                                    normalData?.length ?? 0,
                                                itemBuilder: (context, index1) {
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 8.w),
                                                    child: SizedBox(
                                                      width: 20.w,
                                                      child: CustomText(
                                                          fontSize: 10.sp,
                                                          text:
                                                              "${normalData?[index1].score?[1] ?? ""}"),
                                                    ),
                                                  );
                                                })),
                                      if ((firstData?.length ?? 0) > 0)
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                height: 15.h,
                                                child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    shrinkWrap: true,
                                                    itemCount:
                                                        firstData?.length ?? 0,
                                                    itemBuilder:
                                                        (context, index2) {
                                                      return Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 8.w),
                                                        child: SizedBox(
                                                          width: 20.w,
                                                          child: CustomText(
                                                              fontSize: 10.sp,
                                                              text:
                                                                  "${firstData?[index2].score?[1] ?? ""}"),
                                                        ),
                                                      );
                                                    })),
                                            SizedBox(
                                                height: 15.h,
                                                child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    shrinkWrap: true,
                                                    itemCount:
                                                        secondData?.length ?? 0,
                                                    itemBuilder:
                                                        (context, index3) {
                                                      return Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 8.w),
                                                        child: SizedBox(
                                                          width: 20.w,
                                                          child: CustomText(
                                                              fontSize: 10.sp,
                                                              text:
                                                                  "${secondData?[index3].score?[1] ?? ""}"),
                                                        ),
                                                      );
                                                    }))
                                          ],
                                        )
                                    ],
                                  ),
                                  kSizedBoxH10,
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
