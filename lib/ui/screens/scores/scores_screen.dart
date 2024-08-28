import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';

import '../../../constants/color_const.dart';
import '../../../controller/scores_controller.dart';
import '../../custom_widgets/custom_card.dart';

class ScoresScreen extends StatelessWidget {
  const ScoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scoresController = Get.put(ScoresController());
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
        ),
        body: Obx(
          () => scoresController.isLoading.value == true
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: EdgeInsets.all(10.w),
                  child: ListView(
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount:
                              scoresController.scores.value.countries?.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Visibility(
                              visible: scoresController.scores.value
                                          .countries?[index].gamesCount !=
                                      0 ||
                                  scoresController.scores.value
                                          .countries?[index].gamesCount !=
                                      null,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 5.h),
                                child: CustomCard(
                                  padding: 0,
                                  widget: ExpansionTile(
                                    title: CustomText(
                                      text: scoresController.scores.value
                                              .countries?[index].name ??
                                          '',
                                    ),
                                    children: const [
                                      ListTile(
                                          title:
                                              CustomText(text: 'Sub-item 1')),
                                      ListTile(
                                          title:
                                              CustomText(text: 'Sub-item 2')),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
        ));
  }
}
