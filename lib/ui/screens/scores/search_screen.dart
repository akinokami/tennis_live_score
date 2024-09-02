import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';
import 'package:tennis_live_score/ui/custom_widgets/custom_text_field.dart';
import 'package:tennis_live_score/ui/screens/scores/match_detail_screen.dart';

import '../../../constants/color_const.dart';
import '../../../controller/scores_controller.dart';
import '../../../utils/function.dart';
import '../../custom_widgets/custom_card.dart';
import '../../custom_widgets/custom_loading.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scoresController = Get.put(ScoresController());
    return Scaffold(
        backgroundColor: primaryColor,
        body: Obx(
          () => scoresController.isLoading.value == true
              ? const Center(child: CustomCircleLoading())
              : Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: scoresController.searchTxtController,
                        hintText: 'search'.tr,
                        onChanged: (value) {
                          scoresController.searchGame();
                        },
                      ),
                      kSizedBoxH10,
                      Expanded(
                        child: scoresController.gameFilterList.isEmpty
                            ?  Center(
                                child: CustomText(text: 'no_data'.tr))
                            : ListView.builder(
                                shrinkWrap: true,
                                itemCount:
                                    scoresController.gameFilterList.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(bottom: 5.h),
                                    child: CustomCard(
                                        widget: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: (scoresController.scores.value
                                                          .competitions ??
                                                      [])
                                                  .where((element) =>
                                                      element.iD ==
                                                      scoresController
                                                          .gameFilterList[index]
                                                          .compId)
                                                  .isNotEmpty
                                              ? "${(scoresController.scores.value.competitions ?? []).where((element) => element.iD == scoresController.gameFilterList[index].compId).first.name ?? ''} (${(scoresController.scores.value.countries ?? []).where((element) => element.iD == (scoresController.scores.value.competitions ?? []).where((element) => element.iD == scoresController.gameFilterList[index].compId).first.cID).first.name ?? ''})"
                                              : '',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Divider(
                                          thickness: 1.h,
                                          color: Colors.grey,
                                        ),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: scoresController
                                                .gameFilterList[index]
                                                .games
                                                ?.length,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemBuilder: (context, index1) {
                                              return InkWell(
                                                onTap: () {
                                                  Get.to(
                                                      () =>
                                                          const MatchDetailScreen(),
                                                      arguments: {
                                                        'gameId':
                                                            scoresController
                                                                .gameFilterList[
                                                                    index]
                                                                .games?[index1]
                                                                .iD
                                                      });
                                                },
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          width: 1.sh * 0.10,
                                                          child: CustomText(
                                                            text: ((scoresController
                                                                            .gameFilterList[
                                                                                index]
                                                                            .games?[
                                                                                index1]
                                                                            .comps ??
                                                                        [])
                                                                    .isNotEmpty)
                                                                ? (scoresController
                                                                        .gameFilterList[
                                                                            index]
                                                                        .games?[
                                                                            index1]
                                                                        .comps?[
                                                                            0]
                                                                        .name ??
                                                                    '')
                                                                : '',
                                                            maxLines: 2,
                                                            textAlign:
                                                                TextAlign.right,
                                                            fontSize: 10.sp,
                                                          ),
                                                        ),
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100.r),
                                                          child: Image.network(
                                                            (scoresController
                                                                            .gameGroups[
                                                                                index]
                                                                            .games?[
                                                                                index1]
                                                                            .comps ??
                                                                        [])
                                                                    .isNotEmpty
                                                                ? imageUrl(
                                                                    "Competitors:default${scoresController.gameGroups[index].games?[index1].comps?[0].iD}.png",
                                                                    "Competitors",
                                                                    scoresController
                                                                            .gameGroups[index]
                                                                            .games?[index1]
                                                                            .comps?[0]
                                                                            .iD ??
                                                                        0)
                                                                : "",
                                                            fit: BoxFit.cover,
                                                            width: 17.w,
                                                            height: 17.w,
                                                            errorBuilder: (context,
                                                                    error,
                                                                    stackTrace) =>
                                                                Container(
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              100.r)),
                                                              child: Icon(
                                                                Icons.person,
                                                                size: 15.sp,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 40.h,
                                                          width: 103.w,
                                                          child: scoresController
                                                                          .gameFilterList[
                                                                              index]
                                                                          .games?[
                                                                              index1]
                                                                          .winner ==
                                                                      -1 &&
                                                                  scoresController
                                                                          .gameFilterList[
                                                                              index]
                                                                          .games?[
                                                                              index1]
                                                                          .active ==
                                                                      false
                                                              ? Center(
                                                                  child:
                                                                      CustomText(
                                                                    text:
                                                                        subStringAfterSpace(
                                                                      scoresController
                                                                              .gameFilterList[index]
                                                                              .games?[index1]
                                                                              .sTime ??
                                                                          '',
                                                                    ),
                                                                    fontSize:
                                                                        10.sp,
                                                                  ),
                                                                )
                                                              : Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              15.w,
                                                                          margin: EdgeInsets.symmetric(
                                                                              horizontal: 1.w,
                                                                              vertical: 1.w),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          color: scoresController.gameFilterList[index].games?[index1].winner == 1
                                                                              ? secondaryColor
                                                                              : Colors.grey,
                                                                          child:
                                                                              CustomText(
                                                                            text: ((scoresController.gameFilterList[index].games?[index1].scrs ?? []).isNotEmpty)
                                                                                ? (scoresController.gameFilterList[index].games?[index1].scrs?[0]) != -1.0
                                                                                    ? "${scoresController.gameFilterList[index].games?[index1].scrs?[0].toStringAsFixed(0)}"
                                                                                    : '-'
                                                                                : '-',
                                                                            fontSize:
                                                                                10.sp,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              15.w,
                                                                          margin: EdgeInsets.symmetric(
                                                                              horizontal: 1.w,
                                                                              vertical: 1.w),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          color:
                                                                              Colors.grey,
                                                                          child:
                                                                              CustomText(
                                                                            text: ((scoresController.gameFilterList[index].games?[index1].scrs ?? []).length > 4)
                                                                                ? (scoresController.gameFilterList[index].games?[index1].scrs?[4]) != -1.0
                                                                                    ? "${scoresController.gameFilterList[index].games?[index1].scrs?[4].toStringAsFixed(0)}"
                                                                                    : '-'
                                                                                : '-',
                                                                            fontSize:
                                                                                10.sp,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              15.w,
                                                                          margin: EdgeInsets.symmetric(
                                                                              horizontal: 1.w,
                                                                              vertical: 1.w),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          color:
                                                                              Colors.grey,
                                                                          child:
                                                                              CustomText(
                                                                            text: ((scoresController.gameFilterList[index].games?[index1].scrs ?? []).length > 6)
                                                                                ? (scoresController.gameFilterList[index].games?[index1].scrs?[6]) != -1.0
                                                                                    ? "${scoresController.gameFilterList[index].games?[index1].scrs?[6].toStringAsFixed(0)}"
                                                                                    : '-'
                                                                                : '-',
                                                                            fontSize:
                                                                                10.sp,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              15.w,
                                                                          margin: EdgeInsets.symmetric(
                                                                              horizontal: 1.w,
                                                                              vertical: 1.w),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          color:
                                                                              Colors.grey,
                                                                          child:
                                                                              CustomText(
                                                                            text: ((scoresController.gameFilterList[index].games?[index1].scrs ?? []).length > 8)
                                                                                ? (scoresController.gameFilterList[index].games?[index1].scrs?[8]) != -1.0
                                                                                    ? "${scoresController.gameFilterList[index].games?[index1].scrs?[8].toStringAsFixed(0)}"
                                                                                    : '-'
                                                                                : '-',
                                                                            fontSize:
                                                                                10.sp,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              15.w,
                                                                          margin: EdgeInsets.symmetric(
                                                                              horizontal: 1.w,
                                                                              vertical: 1.w),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          color:
                                                                              Colors.grey,
                                                                          child:
                                                                              CustomText(
                                                                            text: ((scoresController.gameFilterList[index].games?[index1].scrs ?? []).length > 10)
                                                                                ? (scoresController.gameFilterList[index].games?[index1].scrs?[10]) != -1.0
                                                                                    ? "${scoresController.gameFilterList[index].games?[index1].scrs?[10].toStringAsFixed(0)}"
                                                                                    : '-'
                                                                                : '-',
                                                                            fontSize:
                                                                                10.sp,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              15.w,
                                                                          margin: EdgeInsets.symmetric(
                                                                              horizontal: 1.w,
                                                                              vertical: 1.w),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          color:
                                                                              Colors.grey,
                                                                          child:
                                                                              CustomText(
                                                                            text: ((scoresController.gameFilterList[index].games?[index1].scrs ?? []).length > 12)
                                                                                ? (scoresController.gameFilterList[index].games?[index1].scrs?[12]) != -1.0
                                                                                    ? "${scoresController.gameFilterList[index].games?[index1].scrs?[12].toStringAsFixed(0)}"
                                                                                    : '-'
                                                                                : '-',
                                                                            fontSize:
                                                                                10.sp,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              15.w,
                                                                          margin: EdgeInsets.symmetric(
                                                                              horizontal: 1.w,
                                                                              vertical: 1.w),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          color: scoresController.gameFilterList[index].games?[index1].winner == 2
                                                                              ? secondaryColor
                                                                              : Colors.grey,
                                                                          child:
                                                                              CustomText(
                                                                            text: ((scoresController.gameFilterList[index].games?[index1].scrs ?? []).length > 1)
                                                                                ? (scoresController.gameFilterList[index].games?[index1].scrs?[1]) != -1.0
                                                                                    ? "${scoresController.gameFilterList[index].games?[index1].scrs?[1].toStringAsFixed(0)}"
                                                                                    : '-'
                                                                                : '-',
                                                                            fontSize:
                                                                                10.sp,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              15.w,
                                                                          margin: EdgeInsets.symmetric(
                                                                              horizontal: 1.w,
                                                                              vertical: 1.w),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          color:
                                                                              Colors.grey,
                                                                          child:
                                                                              CustomText(
                                                                            text: ((scoresController.gameFilterList[index].games?[index1].scrs ?? []).length > 5)
                                                                                ? (scoresController.gameFilterList[index].games?[index1].scrs?[5]) != -1.0
                                                                                    ? "${scoresController.gameFilterList[index].games?[index1].scrs?[5].toStringAsFixed(0)}"
                                                                                    : '-'
                                                                                : '-',
                                                                            fontSize:
                                                                                10.sp,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              15.w,
                                                                          margin: EdgeInsets.symmetric(
                                                                              horizontal: 1.w,
                                                                              vertical: 1.w),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          color:
                                                                              Colors.grey,
                                                                          child:
                                                                              CustomText(
                                                                            text: ((scoresController.gameFilterList[index].games?[index1].scrs ?? []).length > 7)
                                                                                ? (scoresController.gameFilterList[index].games?[index1].scrs?[7]) != -1.0
                                                                                    ? "${scoresController.gameFilterList[index].games?[index1].scrs?[7].toStringAsFixed(0)}"
                                                                                    : '-'
                                                                                : '-',
                                                                            fontSize:
                                                                                10.sp,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              15.w,
                                                                          margin: EdgeInsets.symmetric(
                                                                              horizontal: 1.w,
                                                                              vertical: 1.w),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          color:
                                                                              Colors.grey,
                                                                          child:
                                                                              CustomText(
                                                                            text: ((scoresController.gameFilterList[index].games?[index1].scrs ?? []).length > 9)
                                                                                ? (scoresController.gameFilterList[index].games?[index1].scrs?[9]) != -1.0
                                                                                    ? "${scoresController.gameFilterList[index].games?[index1].scrs?[9].toStringAsFixed(0)}"
                                                                                    : '-'
                                                                                : '-',
                                                                            fontSize:
                                                                                10.sp,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              15.w,
                                                                          margin: EdgeInsets.symmetric(
                                                                              horizontal: 1.w,
                                                                              vertical: 1.w),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          color:
                                                                              Colors.grey,
                                                                          child:
                                                                              CustomText(
                                                                            text: ((scoresController.gameFilterList[index].games?[index1].scrs ?? []).length > 11)
                                                                                ? (scoresController.gameFilterList[index].games?[index1].scrs?[11]) != -1.0
                                                                                    ? "${scoresController.gameFilterList[index].games?[index1].scrs?[11].toStringAsFixed(0)}"
                                                                                    : '-'
                                                                                : '-',
                                                                            fontSize:
                                                                                10.sp,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              15.w,
                                                                          margin: EdgeInsets.symmetric(
                                                                              horizontal: 1.w,
                                                                              vertical: 1.w),
                                                                          alignment:
                                                                              Alignment.center,
                                                                          color:
                                                                              Colors.grey,
                                                                          child:
                                                                              CustomText(
                                                                            text: ((scoresController.gameFilterList[index].games?[index1].scrs ?? []).length > 13)
                                                                                ? (scoresController.gameFilterList[index].games?[index1].scrs?[13]) != -1.0
                                                                                    ? "${scoresController.gameFilterList[index].games?[index1].scrs?[13].toStringAsFixed(0)}"
                                                                                    : '-'
                                                                                : '-',
                                                                            fontSize:
                                                                                10.sp,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                        ),
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100.r),
                                                          child: Image.network(
                                                            (scoresController.gameGroups[index].games?[index1].comps ??
                                                                            [])
                                                                        .length >
                                                                    1
                                                                ? imageUrl(
                                                                    "Competitors:default${scoresController.gameGroups[index].games?[index1].comps?[1].iD}.png",
                                                                    "Competitors",
                                                                    scoresController
                                                                            .gameGroups[index]
                                                                            .games?[index1]
                                                                            .comps?[1]
                                                                            .iD ??
                                                                        0)
                                                                : "",
                                                            fit: BoxFit.cover,
                                                            width: 17.w,
                                                            height: 17.w,
                                                            errorBuilder: (context,
                                                                    error,
                                                                    stackTrace) =>
                                                                Container(
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              100.r)),
                                                              child: Icon(
                                                                Icons.person,
                                                                size: 15.sp,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 1.sh * 0.10,
                                                          child: CustomText(
                                                            text: ((scoresController.gameFilterList[index].games?[index1].comps ??
                                                                            [])
                                                                        .length >
                                                                    1)
                                                                ? (scoresController
                                                                        .gameFilterList[
                                                                            index]
                                                                        .games?[
                                                                            index1]
                                                                        .comps?[
                                                                            1]
                                                                        .name ??
                                                                    '')
                                                                : '',
                                                            fontSize: 10.sp,
                                                            maxLines: 2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Divider(
                                                      thickness: 1.h,
                                                      color: Colors.grey,
                                                    ),
                                                  ],
                                                ),
                                              );
                                            })
                                      ],
                                    )),
                                  );
                                }),
                      )
                    ],
                  ),
                ),
        ));
  }
}
