import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/color_const.dart';
import 'package:tennis_live_score/models/point_by_point.dart';

import '../../../controller/match_detail_controller.dart';
import '../../custom_widgets/custom_text.dart';

class PointByPointWidget extends StatelessWidget {
  const PointByPointWidget({super.key, required this.pointByPoint});
  final PointByPoint pointByPoint;
  @override
  Widget build(BuildContext context) {
    final controller=Get.find<MatchDetailController>();
    return Column(
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
                  print("${pointByPoint.sets?[index].name ?? ""} zzzzzz");
                  return Obx(()=>
                     GestureDetector(
                      onTap: (){
                        controller.changePBPIndex(index);
                      },
                      child: Container(

                        margin: EdgeInsets.only(right: 10.w),
                        padding:
                            EdgeInsets.symmetric(horizontal:20.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          color:controller.selectedPBPIndex.value==index?secondaryColor: cardColor,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Center(
                            child: CustomText(
                                text: pointByPoint.sets?[index].name ?? "")),
                      ),
                    ),
                  );
                }),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: cardColor,
          height: 35.h,
          child: Column(
            children: [
              CustomText(
                text: "point_by_point".tr,
                color: secondaryColor,
                fontWeight: FontWeight.bold,

              ),
              Row(
                children: [
                  //CustomText(text: pointByPoint.sets?[controller.selectedPBPIndex.value].pointsByPointGames[0]. ?? ""),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
