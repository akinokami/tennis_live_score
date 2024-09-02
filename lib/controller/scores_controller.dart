import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/models/game_group.dart';

import '../models/scores.dart';
import '../services/api_repo.dart';
import '../utils/constants.dart';
import '../utils/function.dart';

class ScoresController extends GetxController {
  final searchTxtController = TextEditingController();
  final isLoading = false.obs;

  Rx<Scores> scores = Scores().obs;
  RxList<Countries> countries = <Countries>[].obs;

  List<Games> gameList = <Games>[].obs;
  List<GameGroup> gameGroups = <GameGroup>[].obs;
  List<GameGroup> gameFilterList = <GameGroup>[].obs;
  var selectedDate = DateTime.now().obs;
  final formattedDate = ''.obs;

  @override
  void onInit() {
    startScore();

    super.onInit();
  }

  void startScore() {
    formattedDate.value = formatDate(DateTime.now());
    getScores(formattedDate.value);
  }

  void updateSelectedDate(DateTime newDate) {
    selectedDate.value = newDate;
    formattedDate.value = formatDate(newDate);
    getScores(formattedDate.value);
  }

  Future<void> getScores(String date) async {
    isLoading.value = true;
    try {
      gameList.clear();
      gameGroups.clear();
      gameFilterList.clear();
      final result = await ApiRepo().getScores(date, 3);
      scores.value = result;
      gameList = scores.value.games ?? [];

      var groupedItems = groupBy(gameList, (Games item) => item.comp);
      groupedItems.forEach((key, value) {
        gameGroups.add(GameGroup(compId: key, games: value));
      });
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }

  void searchGame() async {
    isLoading.value = true;
    gameFilterList.clear();
    if (searchTxtController.text.isNotEmpty) {
      List<Games> gList = gameList
          .where((element) =>
              (element.comps?[0].name ?? '')
                  .toLowerCase()
                  .contains(searchTxtController.text.toLowerCase()) ||
              (element.comps?[1].name ?? '')
                  .toLowerCase()
                  .contains(searchTxtController.text.toLowerCase()))
          .toList();

      var groupedItems = groupBy(gList, (Games item) => item.comp);
      groupedItems.forEach((key, value) {
        gameFilterList.add(GameGroup(compId: key, games: value));
      });
    }
    isLoading.value = false;
  }
}
