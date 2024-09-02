import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/models/match_detail.dart';
import 'package:tennis_live_score/models/point_by_point.dart';
import 'package:tennis_live_score/models/stats.dart';

import '../services/api_repo.dart';
import '../utils/constants.dart';

class MatchDetailController extends GetxController {
  final isLoading = false.obs;
  final isLoadingOne = false.obs;
  RxInt selectedIndex = 0.obs;

  RxInt selectedPBPIndex = 0.obs;
  Rx<MatchDetail> matchDetail = MatchDetail().obs;
  Rx<Stats> stats = Stats().obs;
  Rx<StatisticsFilters?> selectedStats = StatisticsFilters().obs;
  Rx<Statics?> selectedStatics = Statics().obs;
  Rx<PointByPoint> pointByPoint = PointByPoint().obs;
  final gameId = 0.obs;

  @override
  void onInit() {
    gameId.value = Get.arguments['gameId'];
    getMatchDetail();
    super.onInit();
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  void changePBPIndex(int index) {
    selectedPBPIndex.value = index;
  }

  void selectStats(StatisticsFilters? s) {
    isLoadingOne.value == true;
    selectedStats.value = s;
    if ((stats.value.statistics ?? []).isNotEmpty) {
      selectedStatics.value = stats.value.statistics!
          .where((element) => element.filterId == selectedStats.value?.iD)
          .firstOrNull;
    }
    isLoadingOne.value == false;
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
    isLoadingOne.value = true;
    try {
      final result = await ApiRepo().getStats(gameId.value);
      stats.value = result;

      if ((stats.value.statisticsFilters ?? []).isNotEmpty) {
        selectedStats.value = stats.value.statisticsFilters?.firstOrNull;
        if ((stats.value.statistics ?? []).isNotEmpty) {
          selectedStatics.value = stats.value.statistics!
              .where((element) => element.filterId == selectedStats.value?.iD)
              .firstOrNull;
        }
      }
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoadingOne.value = false;
    }
  }

  Future<void> getPointByPoint() async {
    isLoadingOne.value = true;
    try {
      final result = await ApiRepo().getPointByPoint(gameId.value);
      pointByPoint.value = result;
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoadingOne.value = false;
    }
  }
}
