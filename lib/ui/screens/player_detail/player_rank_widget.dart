import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';
import 'package:tennis_live_score/models/player_rank.dart';
import '../../../constants/color_const.dart';
import '../../../constants/dimen_const.dart';
import '../../custom_widgets/custom_card.dart';

class PlayerRankingWidget extends StatelessWidget {
  final List<TableRanks>? tableRanks;
  const PlayerRankingWidget({super.key, this.tableRanks});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        padding: 12.w,
        widget: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Expanded(child: CustomText(text: 'player'.tr)),
                CustomText(text: 'PTS'.tr)
              ],
            ),
            kSizedBoxH5,
            Divider(
              height: 1.h,
              color: Colors.grey,
            ),
            kSizedBoxH5,
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: tableRanks?.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 5.w, bottom: 5.w),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 40.w,
                              child: CustomText(text: "${index + 1}.")),
                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(100.r),
                          //   child: Image.network(
                          //     imageUrl(
                          //         "Competitors:default${tableRanks?[index].competitor?.iD}.png",
                          //         "Competitors",
                          //         tableRanks?[index].competitor?.iD ?? 0),
                          //     fit: BoxFit.cover,
                          //     width: 17.w,
                          //     height: 17.w,
                          //     // loadingBuilder:
                          //     //     (context, child, loadingProgress) =>
                          //     //         Container(
                          //     //   decoration: BoxDecoration(
                          //     //       color: Colors.white,
                          //     //       borderRadius: BorderRadius.circular(100.r)),
                          //     //   child: Icon(
                          //     //     Icons.person,
                          //     //     size: 15.sp,
                          //     //   ),
                          //     // ),
                          //     errorBuilder: (context, error, stackTrace) =>
                          //         Container(
                          //       decoration: BoxDecoration(
                          //           color: Colors.white,
                          //           borderRadius: BorderRadius.circular(100.r)),
                          //       child: Icon(
                          //         Icons.person,
                          //         size: 15.sp,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          Container(
                              width: 25.w,
                              height: 25.w,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: Center(
                                child: CustomText(
                                  text: (tableRanks?[index].competitor?.name ??
                                          '')
                                      .split("")[0],
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: secondaryColor,
                                ),
                              )),
                          SizedBox(
                            width: 5.w,
                          ),
                          Expanded(
                              child: CustomText(
                                  text: tableRanks?[index].competitor?.name ??
                                      '')),
                          CustomText(
                              text:
                                  "${tableRanks?[index].points?.toStringAsFixed(0)}"),
                        ],
                      ),
                    );
                  })),
            )
          ],
        ));
  }
}
