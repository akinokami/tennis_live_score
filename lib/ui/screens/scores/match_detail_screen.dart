import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tennis_live_score/constants/color_const.dart';
import 'package:tennis_live_score/models/player_match.dart';

import '../../custom_widgets/custom_text.dart';

class MatchDetailScreen extends StatelessWidget {
  const MatchDetailScreen({super.key, required this.competition});
final Competitions? competition;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: whiteColor),
        title: CustomText(text:competition?.name??"", color: whiteColor, fontSize: 16.sp, fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: whiteColor, width: 2),
                  ),
                  child: CustomText(
                    text: competition?.seasons?[0].stages?[0].groups?[0].participants?[0].name??"",
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
