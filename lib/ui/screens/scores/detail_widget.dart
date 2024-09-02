import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../constants/color_const.dart';
import '../../../constants/dimen_const.dart';
import '../../../models/match_detail.dart';
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
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
              color: cardColor, borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(text: "Scoreboard"),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Row(children: [Column(children: [CustomText(text: text)],)],)
                  SizedBox(
                      width: 20.w,
                      child: Center(
                          child: CustomText(
                        text: "S1",
                        color: greyColor,
                      ))),
                  kSizedBoxW10,
                  SizedBox(
                      width: 20.w,
                      child: Center(
                          child: CustomText(text: "S2", color: greyColor))),
                  kSizedBoxW10,
                  SizedBox(
                      width: 20.w,
                      child: Center(
                          child: CustomText(text: "S3", color: greyColor))),
                  kSizedBoxW10,
                  SizedBox(
                      width: 50.w,
                      child: Center(
                          child: CustomText(text: "Sets", color: greyColor))),
                  kSizedBoxW10,
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Center(child: CustomText(text: "Novak Djoashdfk")),
                  Row(
                    children: [
                      SizedBox(
                          width: 20.w,
                          child: const Center(child: CustomText(text: "6"))),
                      kSizedBoxW10,
                      SizedBox(
                          width: 20.w,
                          child: const Center(child: CustomText(text: "6"))),
                      kSizedBoxW10,
                      SizedBox(
                          width: 20.w,
                          child: const Center(child: CustomText(text: "6"))),
                      kSizedBoxW10,
                      SizedBox(
                          width: 50.w,
                          child: const Center(child: CustomText(text: "6"))),
                      kSizedBoxW10,
                    ],
                  )
                ],
              ),
              kSizedBoxH5,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Center(child: CustomText(text: "Rafael Nadal")),
                  Row(
                    children: [
                      SizedBox(
                          width: 20.w,
                          child: const Center(child: CustomText(text: "6"))),
                      kSizedBoxW10,
                      SizedBox(
                          width: 20.w,
                          child: const Center(child: CustomText(text: "6"))),
                      kSizedBoxW10,
                      SizedBox(
                          width: 20.w,
                          child: const Center(child: CustomText(text: "6"))),
                      kSizedBoxW10,
                      SizedBox(
                          width: 50.w,
                          child: const Center(child: CustomText(text: "6"))),
                      kSizedBoxW10,
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        kSizedBoxH20,
        Container(
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
              color: cardColor, borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(text: "Stats"),
              kSizedBoxH15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "66",
                    color: secondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
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
                    text: "43",
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  )
                ],
              ),
              kSizedBoxH15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 80.w,
                      child: const Center(child: CustomText(text: "9"))),
                  SizedBox(
                      width: 150.w,
                      child: Center(
                          child: CustomText(
                        text: "Aces",
                        fontSize: 10.sp,
                      ))),
                  SizedBox(
                      width: 80.w,
                      child: const Center(child: CustomText(text: "1"))),
                ],
              ),
              kSizedBoxH15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 80.w,
                      child: const Center(child: CustomText(text: "1"))),
                  SizedBox(
                      width: 150.w,
                      child: Center(
                          child: CustomText(
                        text: "Break Points Won",
                        fontSize: 10.sp,
                      ))),
                  SizedBox(
                      width: 80.w,
                      child: const Center(child: CustomText(text: "1"))),
                ],
              ),
              kSizedBoxH15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 80.w,
                      child: Center(
                          child: CustomText(
                        text: "1",
                        fontSize: 10.sp,
                        maxLines: 2,
                      ))),
                  SizedBox(
                      width: 150.w,
                      child: Center(
                          child: CustomText(
                        text: "Double Faults",
                        fontSize: 10.sp,
                        maxLines: 2,
                      ))),
                  SizedBox(
                      width: 80.w,
                      child: Center(
                          child: CustomText(
                        text: "1",
                        fontSize: 10.sp,
                        maxLines: 2,
                      ))),
                ],
              ),
              kSizedBoxH15,
              Divider(
                color: secondaryColor,
              ),
              Center(
                  child: GestureDetector(
                      onTap: onTap,
                      child: CustomText(
                        text: "See All",
                        fontSize: 10.sp,
                      )))
            ],
          ),
        ),
      ],
    );
  }
}
