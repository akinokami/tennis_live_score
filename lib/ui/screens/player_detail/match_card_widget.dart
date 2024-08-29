import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';

import '../../custom_widgets/custom_card.dart';

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.only(bottom: 5.h),
        child: CustomCard(
            widget: Column(
          children: [
            CustomText(
              text: 'league',
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
                    text: 'player name',
                    maxLines: 2,
                  ),
                ),
                CustomText(text: '0 - 2'),
                SizedBox(
                  width: 1.sw * 0.10,
                  child: CustomText(
                    text: 'player name',
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
