import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';

import '../../../models/player_match.dart';
import '../../custom_widgets/custom_card.dart';

class MatchCardWidget extends StatelessWidget {
  final Sections? sections;
  const MatchCardWidget({super.key, this.sections});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: sections?.data?.games?.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: CustomCard(
                widget: Column(
              children: [
                CustomText(
                  text: 'league'.tr,
                ),
                Divider(
                  thickness: 1.h,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 1.sw * 0.10,
                      child: CustomText(
                        // ignore: prefer_is_empty
                        text: ((sections?.data?.games?[index].comps ?? [])
                                    .length >
                                0)
                            ? (sections?.data?.games?[index].comps?[0].name ??
                                '')
                            : '',
                        maxLines: 2,
                      ),
                    ),
                    const CustomText(text: '0 - 2'),
                    SizedBox(
                      width: 1.sw * 0.10,
                      child: CustomText(
                        text: 'player name'.tr,
                        maxLines: 2,
                      ),
                    )
                  ],
                )
              ],
            )),
          );
        });
  }
}
