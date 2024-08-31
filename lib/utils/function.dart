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
