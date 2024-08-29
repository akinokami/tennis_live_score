import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';
import 'package:tennis_live_score/models/player_rank.dart';
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
