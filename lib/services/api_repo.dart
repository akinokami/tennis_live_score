import 'package:tennis_live_score/models/app_setting.dart';
import 'package:tennis_live_score/models/match_detail.dart';
import 'package:tennis_live_score/models/player_match.dart';
import 'package:tennis_live_score/models/player_rank.dart';
import 'package:tennis_live_score/models/point_by_point.dart';
import 'package:tennis_live_score/models/standing.dart';
import 'package:tennis_live_score/models/stats.dart';
import 'package:tennis_live_score/services/api_constant.dart';
import 'package:tennis_live_score/services/api_utils.dart';

import '../models/scores.dart';
import '../utils/exception.dart';

class ApiRepo {
  final ApiUtils apiUtils = ApiUtils();

  ///AppSettings
  Future<AppSetting> getAppSetting() async {
    try {
      final response = await apiUtils
          .get(url: "${ApiConstant.baseUrl}Data/Init/", queryParameters: {
        "category": "MOBILE_APP",
        "SupportWebp": true,
        "lang": 1,
        "AppType": 2,
        "AppVersion": 1365,
        "uc": 0,
        "tz": 41,
        "theme": "dark",
        "StoreVersion": 1365,
        "athletesSupported": true
      });
      final res = response.data;
      return AppSetting.fromJson(res);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  ///Score
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

  ///Standing
  Future<Standing> getStanding(String startDate, int sportId) async {
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
      return Standing.fromJson(res);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

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

  ///MatchDetail
  Future<MatchDetail> getMatchDetail(int gameId) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl}Data/Games/GameCenter/",
          queryParameters: {
            "game": gameId,
            "ShowNAOdds": true,
            "withExpanded": true,
            "WithNews": true,
            "withexpandedstats": true,
            "OddsFormat": 1,
            "withstats": false,
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
      return MatchDetail.fromJson(res);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  Future<Stats> getStats(int gameId) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl}Data/Games/GameCenter/Statistics/All/",
          queryParameters: {
            "GameID": 4212433,
            "AppVersion": 1365,
            "tz": 41,
            "StoreVersion": 1365,
            "theme": "dark",
            "lang": 1,
            "athletesSupported": true,
            "AppType": 2,
            "uc": 0
          });
      final res = response.data;
      return Stats.fromJson(res);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  Future<PointByPoint> getPointByPoint(int gameId) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl}Data/Games/GameCenter/PointByPoint",
          queryParameters: {
            "GameID": 4212433,
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
      return PointByPoint.fromJson(res);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }
}
