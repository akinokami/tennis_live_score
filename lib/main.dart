import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tennis_live_score/constants/color_const.dart';
import 'package:tennis_live_score/ui/screens/splash/splash_screen.dart';
import 'package:tennis_live_score/utils/global.dart';

import 'language/language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    Global.language = box.read('language') ?? "zh";
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            primaryColor: secondaryColor,
          ),
          translations: Languages(),
          locale: Global.language == 'zh'
              ? const Locale('zh', 'CN')
              : Global.language == 'hi'
                  ? const Locale('hi', 'IN')
                  : Global.language == 'vi'
                      ? const Locale('vi', 'VN')
                      : const Locale('en', 'US'),
          fallbackLocale: const Locale('zh', 'CN'),
          home: const SplashScreen(),
        );
      },
    );
  }
}
