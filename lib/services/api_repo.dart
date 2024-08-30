import 'package:tennis_live_score/models/player_match.dart';
import 'package:tennis_live_score/models/player_rank.dart';
import 'package:tennis_live_score/services/api_constant.dart';
import 'package:tennis_live_score/services/api_utils.dart';

import '../models/scores.dart';
import '../utils/exception.dart';

class ApiRepo {
  final ApiUtils apiUtils = ApiUtils();

  Future<Scores> getScores(String startDate, int sportId) async {
    try {
      final response = await apiUtils
          .get(url: "${ApiConstant.baseUrl}Data/Games/", queryParameters: {
        "startdate": startDate,
        "enddate": "",
        "FullCurrTime": true,
        "sports": sportId,
        "onlyvideos": false,
        "onlymajorgames": true,
        "withExpanded": true,
        "light": true,
        "ShowNAOdds": true,
        "FavoriteCompetitions": "7,572",
        "OddsFormat": 1,
        "lang": 1,
        "AppType": 2,
        "AppVersion": 1365,
        "uc": 0,
        "tz": 41,
        "theme": "dark",
        "StoreVersion": 1365,
        "athletesSupported": true,
        "UserTestGroup": 41
      });
      final res = response.data;
      return Scores.fromJson(res);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  // Future<List<MatchModel>> getUpcomingList() async {
  //   try {
  //     final response =
  //         await apiUtils.post(url: "${ApiConstant.baseUrl}upcoming/0");
  //     print("response >>>>>$response");
  //     final matches = response.data as List;
  //     return matches.map((item) => MatchModel.fromJson(item)).toList();
  //   } catch (e) {
  //     throw CustomException(e.toString());
  //   }
  // }

  ///Player

  Future<PlayerMatch> getPlayerMatches(int competitors) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl}Data/Dashboard/Light/",
          queryParameters: {
            "NewsLang": 1,
            "Countries": "",
            "Competitions": "",
            "Competitors": competitors,
            "Game": "",
            "Athletes": "",
            "UserCountry": 0,
            "OnlyInLang": true,
            "OnlyInCountry": false,
            "WithTransfers": true,
            "newsSources": "",
            "FilterSourcesOut": true,
            "IsTablet": false,
            "OddsFormat": 1,
            "lang": 1,
            "AppType": 2,
            "AppVersion": 1365,
            "uc": 0,
            "tz": 41,
            "theme": "dark",
            "StoreVersion": 1365,
            "athletesSupported": true,
            "UserTestGroup": 41
          });
      final res = response.data;
      return PlayerMatch.fromJson(res);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  Future<PlayerRank> getPlayerRank(int comp) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl}Data/Statistics/Tables/",
          queryParameters: {
            "Competition": comp,
            "season": 1,
            "stage": 1,
            "withExpanded": true,
            "IsTablet": false,
            "lang": 1,
            "AppType": 2,
            "AppVersion": 1365,
            "uc": 0,
            "tz": 41,
            "theme": "dark",
            "StoreVersion": 1365,
            "athletesSupported": true,
            "UserTestGroup": 41
          });
      final res = response.data;
      return PlayerRank.fromJson(res);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }
}
