import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubizcode_assignment/presentation/widgets/custom_text/custom_text.dart';
import 'package:rubizcode_assignment/utils/static_strings/static_strings.dart';

class CustomDailyTopper extends StatelessWidget {
  final Widget widget;
  final String text;

  CustomDailyTopper({super.key, required this.widget, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8.w, bottom: 16.h),
      child: Row(
        children: [
          widget,
          CustomText(
            text: text,
            fontSize: 20.h,
            left: 8.w,
          ),
        ],
      ),
    );
  }
}
