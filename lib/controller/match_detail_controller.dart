import 'package:get/get.dart';
import 'package:tennis_live_score/models/stats.dart';

class MatchDetailController extends GetxController {
  final isLoading = false.obs;
  Rx<Stats> stats = Stats().obs;
  RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    //
    super.onInit();
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
