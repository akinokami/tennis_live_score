// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:tennis_live_score/constants/dimen_const.dart';
// import 'package:tennis_live_score/ui/custom_widgets/custom_text.dart';
// import 'package:tennis_live_score/ui/screens/player_detail/player_detail_screen.dart';

// import '../../../constants/color_const.dart';
// import '../../../controller/scores_controller.dart';
// import '../../custom_widgets/custom_card.dart';
// import '../../custom_widgets/custom_loading.dart';

// class ScoresScreen extends StatelessWidget {
//   const ScoresScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final scoresController = Get.put(ScoresController());
//     return Scaffold(
//         backgroundColor: primaryColor,
//         appBar: AppBar(
//           backgroundColor: primaryColor,
//         ),
//         body: Obx(
//           () => scoresController.isLoading.value == true
//               ? const Center(child: CustomCircleLoading())
//               : Padding(
//                   padding: EdgeInsets.all(10.w),
//                   child: ListView(
//                     children: [
//                       ///Countries
//                       ListView.builder(
//                           shrinkWrap: true,
//                           itemCount:
//                               scoresController.scores.value.countries?.length,
//                           physics: const NeverScrollableScrollPhysics(),
//                           itemBuilder: (context, index) {
//                             return Visibility(
//                               visible: scoresController.scores.value
//                                       .countries?[index].gamesCount !=
//                                   0,
//                               child: Padding(
//                                 padding: EdgeInsets.only(bottom: 5.h),
//                                 child: CustomCard(
//                                   padding: 0,
//                                   widget: ExpansionTile(
//                                     title: Row(
//                                       children: [
//                                         CustomText(
//                                           text: scoresController.scores.value
//                                                   .countries?[index].name ??
//                                               '',
//                                         ),
//                                         kSizedBoxW10,
//                                         CustomText(
//                                           text:
//                                               "${scoresController.scores.value.countries?[index].gamesCount}",
//                                           fontSize: 10.sp,
//                                         )
//                                       ],
//                                     ),
//                                     children: [
//                                       ///Competitions
//                                       ListView.builder(
//                                           shrinkWrap: true,
//                                           itemCount: scoresController.scores
//                                               .value.competitions?.length,
//                                           physics:
//                                               const NeverScrollableScrollPhysics(),
//                                           itemBuilder: (context, index1) {
//                                             return Visibility(
//                                               visible: scoresController
//                                                       .scores
//                                                       .value
//                                                       .countries?[index]
//                                                       .iD ==
//                                                   scoresController
//                                                       .scores
//                                                       .value
//                                                       .competitions?[index1]
//                                                       .cID,
//                                               child: Column(
//                                                 children: [
//                                                   CustomText(
//                                                       text: scoresController
//                                                               .scores
//                                                               .value
//                                                               .competitions?[
//                                                                   index1]
//                                                               .name ??
//                                                           ''),

//                                                   ///Game
//                                                   ListView.builder(
//                                                       shrinkWrap: true,
//                                                       itemCount:
//                                                           scoresController
//                                                               .scores
//                                                               .value
//                                                               .games
//                                                               ?.length,
//                                                       physics:
//                                                           const NeverScrollableScrollPhysics(),
//                                                       itemBuilder:
//                                                           (context, index2) {
//                                                         return Visibility(
//                                                             visible: scoresController
//                                                                     .scores
//                                                                     .value
//                                                                     .competitions?[
//                                                                         index1]
//                                                                     .iD ==
//                                                                 scoresController
//                                                                     .scores
//                                                                     .value
//                                                                     .games?[
//                                                                         index2]
//                                                                     .comp,
//                                                             child:
//                                                                 GestureDetector(
//                                                               onTap: () {
//                                                                 Get.to(() =>
//                                                                     const PlayerDetailScreen());
//                                                               },
//                                                               child: Padding(
//                                                                 padding:
//                                                                     EdgeInsets.all(
//                                                                         kPadding5),
//                                                                 child: Column(
//                                                                   children: [
//                                                                     Row(
//                                                                       mainAxisAlignment:
//                                                                           MainAxisAlignment
//                                                                               .spaceBetween,
//                                                                       children: [
//                                                                         SizedBox(
//                                                                           width:
//                                                                               1.sh * 0.10,
//                                                                           child:
//                                                                               CustomText(
//                                                                             text:
//                                                                                 scoresController.scores.value.games?[index2].comps?[0].name ?? '',
//                                                                             maxLines:
//                                                                                 2,
//                                                                             textAlign:
//                                                                                 TextAlign.right,
//                                                                           ),
//                                                                         ),
//                                                                         SizedBox(
//                                                                           width:
//                                                                               1.sw * 0.30,
//                                                                           height:
//                                                                               30.h,
//                                                                           child:
//                                                                               GridView.builder(
//                                                                             shrinkWrap:
//                                                                                 true,
//                                                                             scrollDirection:
//                                                                                 Axis.horizontal,
//                                                                             physics:
//                                                                                 const PageScrollPhysics(),
//                                                                             gridDelegate:
//                                                                                 const SliverGridDelegateWithFixedCrossAxisCount(
//                                                                               crossAxisCount: 2,
//                                                                               mainAxisSpacing: 0.0,
//                                                                               crossAxisSpacing: 0.0,
//                                                                             ),
//                                                                             itemCount:
//                                                                                 scoresController.scores.value.games?[index2].scrs?.length,
//                                                                             itemBuilder:
//                                                                                 (context, index3) {
//                                                                               return Container(
//                                                                                 padding: EdgeInsets.all(0.w),
//                                                                                 alignment: Alignment.center,
//                                                                                 color: Colors.grey,
//                                                                                 child: CustomText(
//                                                                                   text: scoresController.scores.value.games?[index2].scrs?[index3] == -1.0 ? "-" : "${scoresController.scores.value.games?[index2].scrs?[index3].toStringAsFixed(0)}",
//                                                                                 ),
//                                                                               );
//                                                                             },
//                                                                           ),
//                                                                         ),
//                                                                         SizedBox(
//                                                                           width:
//                                                                               1.sh * 0.10,
//                                                                           child:
//                                                                               CustomText(
//                                                                             text:
//                                                                                 scoresController.scores.value.games?[index2].comps?[1].name ?? '',
//                                                                             maxLines:
//                                                                                 2,
//                                                                           ),
//                                                                         ),
//                                                                       ],
//                                                                     )
//                                                                   ],
//                                                                 ),
//                                                               ),
//                                                             ));
//                                                       })
//                                                 ],
//                                               ),
//                                             );
//                                           })
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             );
//                           }),
//                     ],
//                   ),
//                 ),
//         ));
//   }
// }
