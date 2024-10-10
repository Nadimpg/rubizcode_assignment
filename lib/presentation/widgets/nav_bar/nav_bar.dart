import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rubizcode_assignment/core/app_routes/app_routes.dart';
import 'package:rubizcode_assignment/core/custom_assets/assets.gen.dart';
import 'package:rubizcode_assignment/utils/app_colors/app_colors.dart';

class NavBar extends StatefulWidget {
  final int currentIndex;

  const NavBar({required this.currentIndex, super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var bottomNavIndex = 0;

  List<Widget> selectedIcon = [
    Assets.icons.homeFilled.svg(),
    Assets.icons.article.svg(),
    Assets.icons.notifications.svg(),
    Assets.images.profile.image(height: 24.h, width: 24.w),
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
          border: Border(top: BorderSide(color: Colors.grey))
      ),
      margin: const EdgeInsets.only(
        bottom: 8,
      ),
      height: 70.h,
      width: MediaQuery.of(context).size.width,

      alignment: Alignment.center,
      // color: AppColors.greenNormalGreen4,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          selectedIcon.length,
              (index) => InkWell(
            onTap: () => onTap(index),
            child: Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  selectedIcon[index],

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onTap(int index) {
    if (index == 0) {
      if (!(widget.currentIndex == 0)) {
        Get.offAllNamed(AppRoute.homeScreen);
      }
    } else if (index == 1) {
      if (!(widget.currentIndex == 1)) {
        Get.offAllNamed(AppRoute.articleCScreen);
      }
    } else if (index == 2) {
      if (!(widget.currentIndex == 2)) {
        Get.offAllNamed(AppRoute.notifications);
      }
    }
    //
    else if (index == 3) {
      if (!(widget.currentIndex == 3)) {
        Get.offAllNamed(AppRoute.profileScreen);
      }
    }
  }
}