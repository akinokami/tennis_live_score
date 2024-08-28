import 'package:tennis_live_score/services/api_utils.dart';

class ApiRepo {
  final ApiUtils apiUtils = ApiUtils();

  // Future<UserModel> getGuestUser() async {
  //   try {
  //     final response =
  //         await apiUtils.get(url: "${ApiConstant.baseUrl}getGuest");
  //     final cookies = response.headers['set-cookie'];
  //     if ((cookies ?? []).isNotEmpty) {
  //       final box = GetStorage();
  //       box.write('cookies', cookies?[0].toString());
  //       apiUtils.setCookies(cookies?[0] ?? '');
  //     }
  //     print("cookies>>>${cookies?[0].toString()}");
  //     // Global.cookie =
  //     //     response.headers.map["set-cookie"]?.first.split(";").first ?? '';
  //     // if ((Global.cookie).isNotEmpty) {
  //     //   final box = GetStorage();
  //     //   box.write('cookies', Global.cookie);
  //     //   apiUtils.setCookiesJar(Global.cookie);
  //     // }
  //     // print("cookies>>>${Global.cookie}");
  //     final guest = response.data;
  //     return UserModel.fromJson(guest);
  //   } catch (e) {
  //     throw CustomException(e.toString());
  //   }
  // }

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
}
