import 'package:intl/intl.dart';
import 'package:tennis_live_score/models/app_setting.dart';
import 'package:tennis_live_score/utils/global.dart';

String subStringAfterSpace(String text) {
  int index = text.indexOf(' ');
  return text.substring(index, text.length);
}

String subStringBeforeSpace(String text) {
  int index = text.indexOf(' ');
  return text.substring(0, index);
}

String formatDate(DateTime date) {
  final format = DateFormat('dd/MM/yyyy');
  return format.format(date);
}

String imageUrl(String def, String type, int id) {
  String url =
      'http://imagescache.365scores.com/image/upload/w_50,h_50,c_limit,f_webp,q_auto:eco,d_$def/$type/$id';
  return url;
}

String findStatsType(int type) {
  StatisticTypes? sType = Global.sportType?.statisticTypes
      ?.where((element) => element.iD == type)
      .toList()
      .firstOrNull;
  return sType?.name ?? '-';
}
