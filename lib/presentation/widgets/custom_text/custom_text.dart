
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:rubizcode_assignment/utils/app_colors/app_colors.dart';
import 'package:rubizcode_assignment/utils/dimensions/dimensions.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    this.maxLines,
    this.textAlign = TextAlign.center,
    this.left = 0,
    this.right = 0,
    this.top = 0,
    this.bottom = 0,
    this.fontSize,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.primary,
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.decoration, this.decorationColor=AppColors.primary,
  });

  final double left;
  final double right;
  final double top;
  final double bottom;
  final double? fontSize;
  final FontWeight fontWeight;
  final Color color;
  final Color decorationColor;
  final String text;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow overflow;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    final fontSizeValue =
        fontSize ?? Dimensions.getFontSizeDefault(Get.context ?? context);

    return Padding(
      padding:
          EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
      child: Text(
        textAlign: textAlign,
        text,
        maxLines: maxLines,
        overflow: overflow,
        style: GoogleFonts.roboto(
          fontSize: fontSizeValue,
          fontWeight: fontWeight,
          color: color,
          decoration: decoration,
          decorationColor: decorationColor,
          decorationThickness: 2,
        ),
      ),
    );
  }
}
