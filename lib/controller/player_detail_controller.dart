import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/models/player_match.dart';
import 'package:tennis_live_score/models/player_rank.dart';

import '../services/api_repo.dart';
import '../utils/constants.dart';

class PlayerDetailController extends GetxController {
  final isLoading = false.obs;
  Rx<PlayerRank> playerRank = PlayerRank().obs;
  Rx<PlayerMatch> playerMatch = PlayerMatch().obs;
  Rx<Sections> sections = Sections().obs;
  final compId = 0.obs;
  final competitors = 0.obs;

  @override
  void onInit() {
    compId.value = 6878;
    competitors.value = 52703;
    getPlayerMatches();
    super.onInit();
  }

  Future<void> getPlayerMatches() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getPlayerMatches(competitors.value);
      playerMatch.value = result;
      if ((playerMatch.value.sections ?? []).isNotEmpty) {
        sections.value = (playerMatch.value.sections ?? [])
            .where((element) => element.key == "Games")
            .toList()
            .firstOrNull!;
      }
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getPlayerRank() async {
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
