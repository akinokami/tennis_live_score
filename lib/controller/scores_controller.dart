import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/scores.dart';
import '../services/scores_api_repo.dart';
import '../utils/constants.dart';

class ScoresController extends GetxController {
  final isLoading = false.obs;

  Rx<Scores> scores = Scores().obs;

  @override
  void onInit() {
    getScores();
    super.onInit();
  }

  Future<void> getScores() async {
    isLoading.value = true;
    try {
      final result = await ScoresApiRepo().getScores("29/08/2024", 3);
      scores.value = result;
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
