import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:rubizcode_assignment/core/custom_assets/assets.gen.dart';
import 'package:rubizcode_assignment/presentation/screens/home/home_controller/home_controller.dart';
import 'package:rubizcode_assignment/presentation/widgets/custom_daily_topper/custom_daily_topper.dart';
import 'package:rubizcode_assignment/presentation/widgets/custom_text/custom_text.dart';
import 'package:rubizcode_assignment/presentation/widgets/nav_bar/nav_bar.dart';
import 'package:rubizcode_assignment/utils/app_colors/app_colors.dart';
import 'package:rubizcode_assignment/utils/static_strings/static_strings.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});

    HomeController controller=Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(currentIndex: 0),
      body: Obx((){
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 44.h, horizontal: 20.w),
          child: Column(
            children: [
              ///<================= daily topper image ====================>
              Align(
                  alignment: Alignment.center,
                  child: Assets.images.dailyTopper.image(height: 57.h)),

              Gap(44.h),

              ///<================== static daily topper ========================>
              CustomDailyTopper(
                  widget: Assets.icons.trendingUp.svg(),
                  text: AppStrings.trending),
              CustomDailyTopper(
                  widget: Assets.icons.star.svg(), text: AppStrings.top10Today),
              CustomDailyTopper(
                  widget: Assets.icons.bookmark.svg(),
                  text: AppStrings.archivedNews),
              CustomDailyTopper(
                  widget: Assets.icons.borderColor.svg(),
                  text: AppStrings.markedNews),

              Gap(44.h),
              ///<================== Categories & view all ========================>
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: AppStrings.categories,
                    fontSize: 20.h,
                  ),

                  ///<================= view all =========================>
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        CustomText(
                          text: AppStrings.viewAll,
                          fontSize: 20.h,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppColors.primary,
                          size: 18.sp,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Gap(16.h),
           /*   SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(5, (index){
                    return GestureDetector(
                      onTap: (){
                        controller.selectedIndex.value = index;
                        controller.selectedIndex.refresh();
                        print(index);
                      },
                      child: Container(
                        // decoration: BoxDecoration(
                        //   color: controller.selectedIndex.value == index? Colors.transparent : Colors.red
                        // ),
                        margin: EdgeInsets.only(right: 12.w),
                        child: Column(
                          children: [
                            Assets.images.international.image(height:controller.selectedIndex.value == index?96.h : 76.h,width:controller.selectedIndex.value==index?96.h : 76.w),
                            CustomText(text: "National",top: 8.h,fontSize: controller.selectedIndex.value == index? 14.h: 12.h,)
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              )*/

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller:controller. scrollController, // Attach the scroll controller
            child: Row(
              children: List.generate(5, (index) {
                return GestureDetector(
                  onTap: () {
                    // Set the selected index
                    controller.selectedIndex.value = index;
                    controller.selectedIndex.refresh();

                    // Scroll to the next index
                    if (controller.scrollController.hasClients) {
                      // Calculate the scroll offset to move to the next index
                      double nextOffset = controller.scrollController.position.maxScrollExtent * (index + 2) / 5;
                      controller.scrollController.animateTo(
                        nextOffset,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }

                    print("Selected index: $index");
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 12.w),
                    child: Column(
                      children: [
                        Assets.images.international.image(
                          height: controller.selectedIndex.value == index ? 96.h : 76.h,
                          width: controller.selectedIndex.value == index ? 96.h : 76.w,
                        ),
                        CustomText(
                          text: "National",
                          top: 8.h,
                          fontSize: controller.selectedIndex.value == index ? 14.h : 12.h,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          )

            ],
          ),
        );
      }),
    );
  }
}
