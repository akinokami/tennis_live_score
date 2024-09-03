import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/models/standing.dart';

import '../services/api_repo.dart';
import '../utils/constants.dart';
import '../utils/function.dart';

class StandingController extends GetxController {
  final isLoading = false.obs;

  Rx<Standing> standing = Standing().obs;
  RxList<Countries> countries = <Countries>[].obs;

  var selectedDate = DateTime.now().obs;
  final formattedDate = ''.obs;

  @override
  void onInit() {
    startStanding();

    super.onInit();
  }

  void startStanding() {
    formattedDate.value = formatDate(DateTime.now());
    getStanding(formattedDate.value);
  }

  Future<void> getStanding(date) async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getStanding(date, 3);
      standing.value = result;
      countries.value = standing.value.countries!
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
