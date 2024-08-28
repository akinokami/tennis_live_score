import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/color_const.dart';
import '../../custom_widgets/custom_text.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: CustomText(
            text: "Settings",
            color: whiteColor,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                  text: "Settings",
                  color: whiteColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.language, color: whiteColor),
              title: CustomText(
                  text: "Language",
                  color: whiteColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
              trailing: Icon(Icons.arrow_forward_ios, color: whiteColor),
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: whiteColor),
              title: CustomText(
                  text: "Notification",
                  color: whiteColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
              trailing: Icon(Icons.arrow_forward_ios, color: whiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
