import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/controller/standing_controller%20copy.dart';
import 'package:tennis_live_score/ui/screens/player_detail/player_rank_widget.dart';

import '../../../constants/color_const.dart';
import '../../custom_widgets/custom_loading.dart';
import '../../custom_widgets/custom_text.dart';

class StandingTableScreen extends StatelessWidget {
  const StandingTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final standingController = Get.put(StandingController());
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: CustomText(text: standingController.title.value),
        backgroundColor: primaryColor,
      ),
      body: Obx(
        () => standingController.isLoading.value
            ? const Center(child: CustomCircleLoading())
            : PlayerRankingWidget(
                tableRanks: standingController.playerRank.value.tableRows,
              ),
      ),
    );
  }
}
