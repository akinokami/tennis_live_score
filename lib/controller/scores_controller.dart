import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/scores.dart';
import '../services/api_repo.dart';
import '../utils/constants.dart';

class ScoresController extends GetxController {
  final isLoading = false.obs;

  Rx<Scores> scores = Scores().obs;
  RxList<Countries> countries = <Countries>[].obs;

  @override
  void onInit() {
    getScores();
    super.onInit();
  }

  Future<void> getScores() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getScores("30/08/2024", 3);
      scores.value = result;
      countries.value = scores.value.countries!
          .where((element) => element.gamesCount != 0)
          .toList();
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
