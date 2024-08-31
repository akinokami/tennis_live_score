import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/models/match_detail.dart';
import 'package:tennis_live_score/models/stats.dart';

import '../services/api_repo.dart';
import '../utils/constants.dart';

class MatchDetailController extends GetxController {
  final isLoading = false.obs;
  Rx<Stats> stats = Stats().obs;
  RxInt selectedIndex = 0.obs;
  RxInt selectedStatIndex = 0.obs;
  Rx<MatchDetail> matchDetail = MatchDetail().obs;
  final gameId = 0.obs;

  @override
  void onInit() {
    gameId.value = Get.arguments['gameId'];
    super.onInit();
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  void changeStatIndex(int index) {
    selectedStatIndex.value = index;
  }


  Future<void> getMatchDetail() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getMatchDetail(gameId.value);
      matchDetail.value = result;
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getStats() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getStats(gameId.value);
      stats.value = result;
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
