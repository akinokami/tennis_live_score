import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/models/standing.dart';

import '../services/api_repo.dart';
import '../utils/constants.dart';

class StandingController extends GetxController {
  final isLoading = false.obs;

  Rx<Standing> standing = Standing().obs;
  RxList<Countries> countries = <Countries>[].obs;

  @override
  void onInit() {
    getStanding();
    super.onInit();
  }

  Future<void> getStanding() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getStanding("30/08/2024", 3);
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
