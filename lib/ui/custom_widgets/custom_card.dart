import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tennis_live_score/constants/color_const.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    this.height,
    this.width,
    this.color,
    required this.widget,
    this.cardElevation,
  });
  final double? height;
  final double? width;
  final Color? color;
  final Widget widget;
  final double? cardElevation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
          color: color ?? cardColor, borderRadius: BorderRadius.circular(5.r)),
      child: widget,
    );
  }
}
