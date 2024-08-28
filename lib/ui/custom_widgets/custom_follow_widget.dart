import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/color_const.dart';
import 'custom_text.dart';

class CustomFollowWidget extends StatelessWidget {
  const CustomFollowWidget({super.key, required this.label, required this.image, this.subLabel});
final String label;
final String image;
final String? subLabel;
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(horizontal:3.w,vertical: 3.h),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(2.r),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){},
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding:  EdgeInsets.only(right:5.w,top: 5.h),
                child: Icon(Icons.star_border_outlined, color: secondaryColor.withOpacity(0.7),),
              ),
            ),
          ),
          Image.asset(
            image,
            width: 60.w,
            height: 60.h,
          ),
          CustomText(
            text: label,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            maxLines: 2,
          ),
         if(subLabel!=null) CustomText(
            text: subLabel ?? "",
            fontSize: 12.sp,
            color: greyColor,
            fontWeight: FontWeight.bold,
           maxLines: 2,
          ),
        ],
      ),

    );
  }
}
