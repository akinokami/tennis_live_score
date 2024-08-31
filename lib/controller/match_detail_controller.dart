import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/models/match_detail.dart';
import 'package:tennis_live_score/models/point_by_point.dart';
import 'package:tennis_live_score/models/stats.dart';

import '../services/api_repo.dart';
import '../utils/constants.dart';

class MatchDetailController extends GetxController {
  final isLoading = false.obs;

  RxInt selectedIndex = 0.obs;

  Rx<MatchDetail> matchDetail = MatchDetail().obs;
  Rx<Stats> stats = Stats().obs;
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

  Future<void> getPointByPoint() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getPointByPoint(gameId.value);
      pointByPoint.value = result;
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
