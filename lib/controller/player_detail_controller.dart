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
  final mainCompId = 0.obs;
  final competitorId = 0.obs;

  @override
  void onInit() {
    mainCompId.value = Get.arguments['mainCompId'];
    competitorId.value = Get.arguments['competitorId'];
    getPlayerMatches();
    super.onInit();
  }

  Future<void> getPlayerMatches() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getPlayerMatches(competitorId.value);
      playerMatch.value = result;
      if ((playerMatch.value.sections ?? []).isNotEmpty) {
        sections.value = (playerMatch.value.sections ?? [])
            .where((element) => element.key == "Games")
            .toList()
            .firstOrNull!;
        sections.value.data?.games?.reversed.toList();
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
      final result = await ApiRepo().getPlayerRank(mainCompId.value);
      playerRank.value = result;
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
