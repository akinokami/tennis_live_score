import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tennis_live_score/constants/color_const.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';
import 'package:tennis_live_score/models/match_detail.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';

class H2HScreen extends StatelessWidget {
  final List<LastMatches>? lastMatches;
  const H2HScreen({super.key, this.lastMatches});

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
                  text: "Head to Head",
                  fontWeight: FontWeight.bold,
                ),
                kSizedBoxH10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "07/29/2024",
                      color: greyColor,
                    ),
                    Column(
                      children: [
                        CustomText(
                          text: "Olympics Tennis - Men",
                          color: greyColor,
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: "Novak Djokovic  ",
                              fontWeight: FontWeight.bold,
                            ),
                            CustomText(
                              text: "2-0",
                            ),
                            CustomText(
                              text: "  Roger Federer",
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                kSizedBoxH10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "07/29/2024",
                      color: greyColor,
                    ),
                    Column(
                      children: [
                        CustomText(
                          text: "Olympics Tennis - Men",
                          color: greyColor,
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: "Novak Djokovic  ",
                              fontWeight: FontWeight.bold,
                            ),
                            CustomText(
                              text: "2-0",
                            ),
                            CustomText(
                              text: "  Roger Federer",
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                kSizedBoxH10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "07/29/2024",
                      color: greyColor,
                    ),
                    Column(
                      children: [
                        CustomText(
                          text: "Olympics Tennis - Men",
                          color: greyColor,
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: "Novak Djokovic  ",
                              fontWeight: FontWeight.bold,
                            ),
                            CustomText(
                              text: "2-0",
                            ),
                            CustomText(
                              text: "  Roger Federer",
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
