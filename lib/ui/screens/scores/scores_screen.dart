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
                  child: Column(
                    children: [
                      // SizedBox(
                      //   height: 45.h,
                      //   child: ListView.builder(
                      //       shrinkWrap: true,
                      //       itemCount: scoresController.stList.length,
                      //       scrollDirection: Axis.horizontal,
                      //       itemBuilder: (context, index) {
                      //         return Obx(
                      //           () => InkWell(
                      //             onTap: () {
                      //               scoresController.selectSport(
                      //                   scoresController.stList[index]);
                      //             },
                      //             child: Padding(
                      //               padding: EdgeInsets.only(
                      //                   top: 5.w,
                      //                   bottom: 5.w,
                      //                   left: 10.w,
                      //                   right: 10.w),
                      //               child: Column(
                      //                 mainAxisAlignment:
                      //                     MainAxisAlignment.center,
                      //                 children: [
                      //                   Icon(
                      //                     Icons.sports_soccer,
                      //                     color: scoresController
                      //                                 .selectedSport.value.id ==
                      //                             scoresController
                      //                                 .stList[index].id
                      //                         ? secondaryColor
                      //                         : Colors.white,
                      //                   ),
                      //                   CustomText(
                      //                     text: scoresController
                      //                             .stList[index].name ??
                      //                         '',
                      //                     color: scoresController
                      //                                 .selectedSport.value.id ==
                      //                             scoresController
                      //                                 .stList[index].id
                      //                         ? secondaryColor
                      //                         : Colors.white,
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         );
                      //       }),
                      // ),
                      CustomCard(
                          width: double.infinity,
                          widget: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'League name',
                              ),
                              CustomText(text: 'See Standings')
                            ],
                          ))
                    ],
                  ),
                ),
        ));
  }
}
