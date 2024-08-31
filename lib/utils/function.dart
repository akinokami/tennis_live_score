import 'package:intl/intl.dart';

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
