import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tennis_live_score/constants/color_const.dart';

import '../../../utils/global.dart';
import '../../custom_widgets/custom_text.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: lightWhiteColor),
        centerTitle: true,
        title:  CustomText(text:'policy'.tr,fontSize: 16.sp,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children:  [
              Text(
                Global.language == 'en' ? Global.policyEnNormal : Global.policyIndiaNormal,
                style: TextStyle(fontSize: 16.sp, color: whiteColor),
              ),
            ],
          ),
        )
      ),
    );
  }
}
