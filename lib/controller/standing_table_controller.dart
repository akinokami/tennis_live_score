import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/models/player_match.dart';
import 'package:tennis_live_score/models/player_rank.dart';

import '../services/api_repo.dart';
import '../utils/constants.dart';

class StandingTableController extends GetxController {
  final isLoading = false.obs;
  final title = ''.obs;
  Rx<PlayerRank> playerRank = PlayerRank().obs;
  Rx<PlayerMatch> playerMatch = PlayerMatch().obs;

  final compId = 0.obs;

  @override
  void onInit() {
    title.value = Get.arguments['title'];
    compId.value = Get.arguments['compId'];
    if (compId.value != 0) {
      getStanding();
    }

    super.onInit();
  }

  Future<void> getStanding() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getPlayerRank(compId.value);
      playerRank.value = result;
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
