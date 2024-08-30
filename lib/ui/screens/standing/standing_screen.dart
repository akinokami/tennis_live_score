import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';
import 'package:tennis_live_score/controller/scores_controller.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_card.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';
import 'package:tennis_live_score/ui/screens/standing/standing_table_screen.dart';

import '../../../constants/color_const.dart';
import '../../../models/scores.dart';
import '../../custom_widgets/custom_loading.dart';

class StandingScreen extends StatelessWidget {
  const StandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scoresController = Get.put(ScoresController());
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(kPadding10),
        child: Obx(
          () => scoresController.isLoading.value
              ? const Center(child: CustomCircleLoading())
              : ListView.builder(
                  itemCount: scoresController.countries.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Competitions? competition;
                        competition =
                            (scoresController.scores.value.competitions ?? [])
                                .where((element) =>
                                    element.cID ==
                                    scoresController.countries[index].iD)
                                .toList()
                                .firstOrNull;

                        Get.to(() => const StandingTableScreen(), arguments: {
                          "title": scoresController.countries[index].name,
                          "compId": competition
                                  ?.seasons?[0]
                                  .stages?[1]
                                  .groups?[0]
                                  .games?[0]
                                  .game
                                  ?.comps?[0]
                                  .mainComp ??
                              0
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 5.h),
                        child: CustomCard(
                            widget: Row(
                          children: [
                            CustomText(
                                text: scoresController.countries[index].name ??
                                    ''),
                            kSizedBoxW5,
                            CustomText(text: 'standing'.tr),
                          ],
                        )),
                      ),
                    );
                  }),
        ),
      ),
    );
  }
}
