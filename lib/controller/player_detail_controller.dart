import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/models/player_rank.dart';

import '../services/api_repo.dart';
import '../utils/constants.dart';

class PlayerDetailController extends GetxController {
  final isLoading = false.obs;
  Rx<PlayerRank> playerRank = PlayerRank().obs;

  @override
  void onInit() {
    //
    super.onInit();
  }

  Future<void> getPlayerRank() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getPlayerRank(6878);
      playerRank.value = result;
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
