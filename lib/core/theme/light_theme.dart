import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rubizcode_assignment/utils/app_colors/app_colors.dart';
import 'package:rubizcode_assignment/utils/text_style/text_style.dart';

TextStyle style = const TextStyle(color: AppColors.primary);

const lightThemeFont = "Inter", darkThemeFont = "Inter";

final lightTheme = ThemeData(
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.white,
  brightness: Brightness.light,
  useMaterial3: true,
  fontFamily: lightThemeFont,
  splashColor: Colors.transparent,
  // drawerTheme: const DrawerThemeData(
  //   backgroundColor: AppColors.whiteColor,
  // ),
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
  // switchTheme: SwitchThemeData(
  //   thumbColor:
  //       WidgetStateProperty.resolveWith<Color>((states) => lightThemeColor),
  // ),
  appBarTheme: appBarTheme,

  // bottomNavigationBarTheme: bottomNavigationBarTheme
);



//=========================== App Bar =============================
final AppBarTheme appBarTheme = AppBarTheme(
  //color:CustomColor.kPrimaryColorx,

  elevation: 0,
   centerTitle: true,
  iconTheme: const IconThemeData(color: Color(0xff000000)),
  backgroundColor: AppColors.white,
  scrolledUnderElevation: 0,
  titleTextStyle:
      interMedium.copyWith(fontSize: 20.sp, color: Color(0xff000000) ),
  //actionsIconTheme: const IconThemeData(color: AppColors.blackLightColor),
  systemOverlayStyle: const SystemUiOverlayStyle(
    // Status bar color

    statusBarColor: AppColors.white,
    // Status bar brightness (optional)
    statusBarIconBrightness: Brightness.light, // For Android (dark icons)
    statusBarBrightness: Brightness.light, // For iOS (dark icons)
  ),
);

///========================= Bottom NavigationBar ==============================
// const BottomNavigationBarThemeData bottomNavigationBarTheme =
// BottomNavigationBarThemeData(
//     backgroundColor: AppColors.whiteColor,
//     elevation: 1,
//     type: BottomNavigationBarType.fixed,
//     selectedItemColor: AppColors.primaryColor,
//     showUnselectedLabels: true,
//     selectedIconTheme: IconThemeData(size: 28),
//     unselectedItemColor: Colors.grey,
//     selectedLabelStyle: TextStyle(color: AppColors.primaryColor));

// ===================== Comon colors =========================
// const Color lightThemeColor = Colors.white,
//     white = Colors.white,
//     black = Colors.black,
//     darkThemeColor = AppColors.white_50;
