import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/color_const.dart';
import 'package:tennis_live_score/constants/dimen_const.dart';

import '../../../controller/match_detail_controller.dart';
import '../../../controller/scores_controller.dart';
import '../../custom_widgets/custom_text.dart';

class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({
    super.key,
  });

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  List<String> matchDetailList = ["Details", "Stats", "Point by Point"];
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final matchDetailController = Get.put(MatchDetailController());
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: whiteColor),
        title: CustomText(
            text: "Competition Name",
            color: whiteColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.w),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Player 1",
                ),
                Column(
                  children: [
                    CustomText(
                      text: "08/30",
                    ),
                    CustomText(
                      text: "2 - 1",
                    ),
                    CustomText(
                      text: "Ended",
                    ),
                  ],
                ),
                CustomText(
                  text: "Player 2",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
            child: TabBar(
                controller: tabController,
                dividerColor: primaryColor,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: greyColor,
                labelColor: whiteColor,
                indicatorColor: secondaryColor,
                tabs: [
                  Tab(text: "Match"),
                  Tab(text: "H2H"),
                ]),
          ),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              Column(
                children: [
                  kSizedBoxH10,
                  SizedBox(
                    height: 35.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return
                          Obx(()=> GestureDetector(
                            onTap: (){
                              matchDetailController.changeIndex(index);
                            },
                            child: Container(

                                decoration: BoxDecoration(
                                    border: Border.all(color:matchDetailController.selectedIndex.value==index? secondaryColor: primaryColor),
                                    borderRadius: BorderRadius.circular(50.r)),
                                margin: EdgeInsets.symmetric(horizontal:15.w,vertical: 5.h),
                                padding: EdgeInsets.symmetric(horizontal:10.w,vertical: 5.h),
                                child: Center(child: CustomText(text: matchDetailList[index]))),

                        ));
                      },
                      itemCount: matchDetailList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Scoreboard"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 20.w,
                                child: Center(child: CustomText(text: "S1",color: greyColor,))),
                            kSizedBoxW10,
                            SizedBox(width: 20.w,child: Center(child: CustomText(text: "S2",color: greyColor))),
                            kSizedBoxW10,
                            SizedBox(width: 20.w,child: Center(child: CustomText(text: "S3",color: greyColor))),
                            kSizedBoxW10,
                            SizedBox(width: 50.w,child: Center(child: CustomText(text: "Sets",color: greyColor))),
                            kSizedBoxW10,
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Center(child: CustomText(text: "Novak Djoashdfk")),

                          Row(
                            children: [
                              SizedBox(
                                  width: 20.w,
                                  child: Center(child: CustomText(text: "6"))),
                              kSizedBoxW10,
                              SizedBox(
                                  width: 20.w,
                                  child: Center(child: CustomText(text: "6"))),
                              kSizedBoxW10,
                              SizedBox(
                                  width: 20.w,
                                  child: Center(child: CustomText(text: "6"))),
                              kSizedBoxW10,
                              SizedBox(
                                  width: 50.w,
                                  child: Center(child: CustomText(text: "6"))),
                              kSizedBoxW10,
                            ],
                          )
                          ],
                        ),
                        kSizedBoxH5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Center(child: CustomText(text: "Rafael Nadal")),

                            Row(
                              children: [
                                SizedBox(
                                    width: 20.w,
                                    child: Center(child: CustomText(text: "6"))),
                                kSizedBoxW10,
                                SizedBox(
                                    width: 20.w,
                                    child: Center(child: CustomText(text: "6"))),
                                kSizedBoxW10,
                                SizedBox(
                                    width: 20.w,
                                    child: Center(child: CustomText(text: "6"))),
                                kSizedBoxW10,
                                SizedBox(
                                    width: 50.w,
                                    child: Center(child: CustomText(text: "6"))),
                                kSizedBoxW10,
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              CustomText(text: "Match Details")
            ]),
          )
        ],
      ),
    );
  }
}
