import 'package:get/get.dart';
import 'package:tennis_live_score/models/stats.dart';

class MatchDetailController extends GetxController {
  final isLoading = false.obs;
  Rx<Stats> stats = Stats().obs;

  @override
  void onInit() {
    //
    super.onInit();
  }
}
