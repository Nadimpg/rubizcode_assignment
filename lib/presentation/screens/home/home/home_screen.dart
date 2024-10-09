import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:rubizcode_assignment/core/custom_assets/assets.gen.dart';
import 'package:rubizcode_assignment/presentation/screens/home/home_controller/home_controller.dart';
import 'package:rubizcode_assignment/presentation/widgets/custom_daily_topper/custom_daily_topper.dart';
import 'package:rubizcode_assignment/presentation/widgets/custom_image/custom_image.dart';
import 'package:rubizcode_assignment/presentation/widgets/custom_text/custom_text.dart';
import 'package:rubizcode_assignment/presentation/widgets/nav_bar/nav_bar.dart';
import 'package:rubizcode_assignment/utils/AppImg/app_img.dart';
import 'package:rubizcode_assignment/utils/app_colors/app_colors.dart';
import 'package:rubizcode_assignment/utils/static_strings/static_strings.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(currentIndex: 0),
      body: Obx(() => Padding(
        padding: EdgeInsets.symmetric(vertical: 44.h, horizontal: 20.w),
        child: Column(
          children: [
            ///<======================= daily topper images ============================>
            _buildDailyTopper(),
            Gap(44.h),

            ///<======================= daily toppers ============================>
            _buildDailyToppers(),
            Gap(44.h),

            ///<======================= categories && view all ============================>
            _buildCategoryHeader(),
            Gap(16.h),

            ///<======================= categories list ============================>
            _buildCategoryList(),
            Gap(16.h),

            ///<======================= categories news list ============================>
            _buildNewsList(),
          ],
        ),
      )),
    );
  }

  Widget _buildDailyTopper() {
    return Align(
      alignment: Alignment.center,
      child: Assets.images.dailyTopper.image(height: 57.h),
    );
  }

  Widget _buildDailyToppers() {
    return Column(
      children: [
        CustomDailyTopper(widget: Assets.icons.trendingUp.svg(), text: AppStrings.trending),
        CustomDailyTopper(widget: Assets.icons.star.svg(), text: AppStrings.top10Today),
        CustomDailyTopper(widget: Assets.icons.bookmark.svg(), text: AppStrings.archivedNews),
        CustomDailyTopper(widget: Assets.icons.borderColor.svg(), text: AppStrings.markedNews),
      ],
    );
  }

  Widget _buildCategoryHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ///<======================= categories ============================>
        CustomText(text: AppStrings.categories, fontSize: 20.h),

        ///<======================= view all button ============================>
        GestureDetector(
          onTap: () {}, // Implement the view all action
          child: Row(
            children: [
              CustomText(text: AppStrings.viewAll, fontSize: 20.h),
              Icon(Icons.arrow_forward_ios_outlined, color: AppColors.primary, size: 18.sp),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: controller.scrollController,
      child: Row(
        children: List.generate(controller.categories.length, (index) {
          return GestureDetector(
            onTap: () {
              controller.selectedIndex.value = index; // Update selected index
              print("Selected index: $index");
            },
            child: _buildCategoryItem(index),
          );
        }),
      ),
    );
  }

  Widget _buildCategoryItem(int index) {
    return Container(
      margin: EdgeInsets.only(right: 12.w),
      child: Column(
        children: [
          ///<======================= categories image ============================>
          CustomImage(
            imageSrc: controller.categories[index],
            imageType: ImageType.png,
            size: controller.selectedIndex.value == index ? 96.h : 76.h,
          ),

          ///<======================= categories name ============================>
          CustomText(
            text: controller.categoriesName[index],
            top: 8.h,
            fontSize: controller.selectedIndex.value == index ? 14.h : 12.h,
          ),
        ],
      ),
    );
  }

  Widget _buildNewsList() {
    return Expanded(
      child: Obx(() {
        final selectedNews = controller.categoriesNews[controller.selectedIndex.value];
        return SingleChildScrollView(
          child: Column(
            children: List.generate(selectedNews.length, (index) {
              return _buildNewsItem(selectedNews[index]);
            }),
          ),
        );
      }),
    );
  }

  Widget _buildNewsItem(RxMap<String, dynamic> news) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xffC6C6C9), width: 1)),
      ),
      child: Row(
        children: [
          ///<======================= news image ============================>
          CustomImage(
            imageSrc: news['image'] ?? AppImages.dummyImage, // Provide a default image
            size: 56,
            imageType: ImageType.png,
          ),
          ///<======================= news title ============================>
          Expanded(
            child: CustomText(
              text: news['news'] ?? 'No news available', // Provide default text
              maxLines: 3,
              textAlign: TextAlign.start,
              left: 8.w,
            ),
          ),
        ],
      ),
    );
  }
}
