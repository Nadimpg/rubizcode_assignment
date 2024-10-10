import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rubizcode_assignment/core/app_routes/app_routes.dart';
import 'package:rubizcode_assignment/utils/system_utils/system_utils.dart';
import 'core/theme/light_theme.dart';
import 'dependency_injection/getx_injection.dart';
import 'dependency_injection/path.dart';

void main() {
  SystemUtil.setStatusBarColor(color: Colors.transparent);
  initGetx();
  initDependencies();
  runApp(const MyApp());
  // runApp(
  //   DevicePreview(
  //     enabled: !kReleaseMode,
  //     builder: (context) => MyApp(), // Wrap your app
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      // splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'IHB',
         theme: lightTheme,
        defaultTransition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200),
        initialRoute: AppRoute.homeScreen,
        navigatorKey: Get.key,
        getPages: AppRoute.routes,
      ),
    );
  }
}
