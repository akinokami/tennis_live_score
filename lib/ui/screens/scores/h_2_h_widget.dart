import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/color_const.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';
import 'package:tennis_live_score/models/match_detail.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';

class H2HScreen extends StatelessWidget {
  final List<LastMatches>? lastMatches;
  final List<Countries>? countries;
  final List<Competitions>? competitions;
  const H2HScreen(
      {super.key, this.lastMatches, this.countries, this.competitions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            padding: EdgeInsets.all(10.w),
            margin: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "h2h".tr,
                  fontWeight: FontWeight.bold,
                ),
                kSizedBoxH10,
                ListView.builder(
                    itemCount: lastMatches!.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text:
                                (lastMatches![index].sTime ?? "").split(" ")[0].replaceAll("-", "/"),
                            color: greyColor,
                          ),
                          Column(
                            children: [
                              CustomText(
                                  color: greyColor,
                                  fontWeight: FontWeight.bold,
                                  text: (competitions ?? [])
                                          .where((element) =>
                                              element.iD ==
                                              lastMatches![index].comp)
                                          .isNotEmpty
                                      ? "${(competitions ?? []).where((element) => element.iD == lastMatches![index].comp).first.name ?? ''} "
                                      : ''),
                              Padding(
                                padding: EdgeInsets.all(20.w),
                                child: Row(
                                  children: [
                                    CustomText(
                                      text:
                                          "${lastMatches![index].comps![0].name}  ",
                                      fontWeight: FontWeight.bold,
                                      maxLines: 2,
                                      fontSize: 10.sp,
                                      color: ((lastMatches![index].scrs![0]).toInt()> (lastMatches![index].scrs![1]).toInt())?secondaryColor:greyColor,
                                    ),
                                    CustomText(
                                      text:
                                          "${(lastMatches![index].scrs![0]).toInt()} - ${(lastMatches![index].scrs![1]).toInt()}",
                                    ),
                                    CustomText(
                                      maxLines: 2,
                                      fontSize: 10.sp,
                                      text:
                                          "  ${lastMatches![index].comps![1].name}",
                                      fontWeight: FontWeight.bold,
                                      color: ((lastMatches![index].scrs![0]).toInt()< (lastMatches![index].scrs![1]).toInt())?secondaryColor:greyColor,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      );
                    })
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     CustomText(
                //       text: "07/29/2024",
                //       color: greyColor,
                //     ),
                //     Column(
                //       children: [
                //         CustomText(
                //           text: "Olympics Tennis - Men",
                //           color: greyColor,
                //         ),
                //         Row(
                //           children: [
                //             CustomText(
                //               text: "Novak Djokovic  ",
                //               fontWeight: FontWeight.bold,
                //             ),
                //             CustomText(
                //               text: "2-0",
                //             ),
                //             CustomText(
                //               text: "  Roger Federer",
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ],
                //         )
                //       ],
                //     )
                //   ],
                // ),
                // kSizedBoxH10,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     CustomText(
                //       text: "07/29/2024",
                //       color: greyColor,
                //     ),
                //     Column(
                //       children: [
                //         CustomText(
                //           text: "Olympics Tennis - Men",
                //           color: greyColor,
                //         ),
                //         Row(
                //           children: [
                //             CustomText(
                //               text: "Novak Djokovic  ",
                //               fontWeight: FontWeight.bold,
                //             ),
                //             CustomText(
                //               text: "2-0",
                //             ),
                //             CustomText(
                //               text: "  Roger Federer",
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ],
                //         )
                //       ],
                //     )
                //   ],
                // ),
                // kSizedBoxH10,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     CustomText(
                //       text: "07/29/2024",
                //       color: greyColor,
                //     ),
                //     Column(
                //       children: [
                //         CustomText(
                //           text: "Olympics Tennis - Men",
                //           color: greyColor,
                //         ),
                //         Row(
                //           children: [
                //             CustomText(
                //               text: "Novak Djokovic  ",
                //               fontWeight: FontWeight.bold,
                //             ),
                //             CustomText(
                //               text: "2-0",
                //             ),
                //             CustomText(
                //               text: "  Roger Federer",
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ],
                //         )
                //       ],
                //     )
                //   ],
                // )
              ],
            ),
          ),
        ));
  }
}
