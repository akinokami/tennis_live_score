import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:tennis_live_score/language/vn_language.dart';
import 'package:tennis_live_score/language/zh_language.dart';
import 'en_language.dart';
import 'hindi_language.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'zh_CN': ZhLanguage().zhLanguage,
        'en_US': EnLanguage().enLanguage,
        'hi_IN': HindiLanguage().hindiLanguage,
        'vi_VN': VietnamLanguage().vnLanguage,
      };
}
