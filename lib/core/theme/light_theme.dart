import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubizcode_assignment/utils/app_colors/app_colors.dart';

TextStyle style = const TextStyle(color: AppColors.primary);

const lightThemeFont = "Inter", darkThemeFont = "Inter";

final lightTheme = ThemeData(
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.white,
  brightness: Brightness.light,
  useMaterial3: true,
  fontFamily: lightThemeFont,
  splashColor: Colors.transparent,
  textTheme: TextTheme(
    bodySmall: const TextStyle(
      color: AppColors.primary,
    ),
    bodyMedium: GoogleFonts.inter(color: AppColors.primary, fontSize: 18),
    bodyLarge: const TextStyle(
      color: AppColors.primary,
    ),
    labelSmall: const TextStyle(
      color: AppColors.primary,
    ),
    labelMedium: const TextStyle(
      color: AppColors.primary,
    ),
    labelLarge: const TextStyle(
      color: AppColors.primary,
    ),
    displaySmall: const TextStyle(
      color: AppColors.primary,
    ),
    displayMedium: const TextStyle(
      color: AppColors.primary,
    ),
    displayLarge: const TextStyle(
      color: AppColors.primary,
    ),
  ),
  appBarTheme: appBarTheme,
);

//=========================== App Bar =============================
final AppBarTheme appBarTheme = AppBarTheme(
  elevation: 0,
  centerTitle: true,
  iconTheme: IconThemeData(color: Colors.black, size: 18.h),
  backgroundColor: AppColors.white,
  scrolledUnderElevation: 0,
  titleTextStyle: TextStyle(color: Colors.black, fontSize: 20.h),
  systemOverlayStyle: const SystemUiOverlayStyle(
    // Status bar color
    statusBarColor: AppColors.white,
    // Status bar brightness (optional)
    statusBarIconBrightness: Brightness.light, // For Android (dark icons)
    statusBarBrightness: Brightness.light, // For iOS (dark icons)
  ),
);
