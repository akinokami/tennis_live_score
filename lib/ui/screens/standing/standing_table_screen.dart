import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/controller/standing_table_controller.dart';
import 'package:tennis_live_score/ui/screens/player_detail/player_rank_widget.dart';

import '../../../constants/color_const.dart';
import '../../custom_widgets/custom_loading.dart';
import '../../custom_widgets/custom_text.dart';

class StandingTableScreen extends StatelessWidget {
  const StandingTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final standingTableController = Get.put(StandingTableController());
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: CustomText(text: standingTableController.title.value),
        backgroundColor: primaryColor,
      ),
      body: Obx(
        () => standingTableController.isLoading.value
            ? const Center(child: CustomCircleLoading())
            : (standingTableController.playerRank.value.tableRows ?? []).isEmpty
                ? Center(
                    child: CustomText(text: 'no_data'.tr),
                  )
                : Padding(
                    padding: EdgeInsets.all(10.w),
                    child: PlayerRankingWidget(
                      tableRanks:
                          standingTableController.playerRank.value.tableRows,
                    ),
                  ),
      ),
    );
  }
}
