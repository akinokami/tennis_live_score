import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CustomCircleLoading extends StatelessWidget {
  const CustomCircleLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      height: 50.h,
      child: const LoadingIndicator(
          indicatorType: Indicator.ballPulseSync,
          colors: [Colors.green,Colors.red,Colors.blue,],
          strokeWidth: 2
      ),
    );
  }
}
