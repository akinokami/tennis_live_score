import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '../../../constants/color_const.dart';
import '../../../constants/dimen_const.dart';
import '../../../controller/splash_screen_controller.dart';
import '../../custom_widgets/custom_loading.dart';
import '../../custom_widgets/custom_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 80.h,
            ),
            kSizedBoxH30,
            kSizedBoxH30,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: 'Please wait',
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
                kSizedBoxW5,
                CustomCircleLoading()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
