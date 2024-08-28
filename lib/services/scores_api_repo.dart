import 'package:tennis_live_score/models/sport_type.dart';
import 'package:tennis_live_score/services/api_constant.dart';
import 'package:tennis_live_score/services/api_utils.dart';

import '../models/scores.dart';
import '../utils/exception.dart';

class ScoresApiRepo {
  final ApiUtils apiUtils = ApiUtils();

  Future<List<SportType>> getSportTypes() async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl}Data/Init/AllScores",
          queryParameters: {"lang": 1});

      final matches = response.data['AllScoresCategories'] as List;
      return matches.map((item) => SportType.fromJson(item)).toList();
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  Future<Scores> getScores(String startDate, int sportId) async {
    try {
      // final response = await apiUtils
      //     .get(url: "${ApiConstant.baseUrl}Data/Games/", queryParameters: {
      //   "startdate": startDate,
      //   "sports": sportId,
      //   "lang": 1,
      // });
      final response = await apiUtils.get(
          url:
              'http://mobileapi.365scores.com/Data/Games/?startdate=29/08/2024&enddate=&FullCurrTime=true&onlyvideos=false&sports=3&onlymajorgames=true&withExpanded=true&light=true&ShowNAOdds=true&FavoriteCompetitions=7,572&OddsFormat=1&lang=1&AppType=2&AppVersion=1365&uc=0&tz=41&theme=dark&StoreVersion=1365&athletesSupported=true&UserTestGroup=41');
      final res = response.data;
      return Scores.fromJson(res);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }
}
