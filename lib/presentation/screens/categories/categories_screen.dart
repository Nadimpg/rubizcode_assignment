import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rubizcode_assignment/presentation/screens/home/home_controller/home_controller.dart';
import 'package:rubizcode_assignment/presentation/widgets/custom_image/custom_image.dart';
import 'package:rubizcode_assignment/presentation/widgets/custom_text/custom_text.dart';
import 'package:rubizcode_assignment/utils/static_strings/static_strings.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.categories),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
        child: GridView.builder(
          itemCount: controller.categoriesList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
            crossAxisSpacing: 24.w, // Horizontal spacing between items
            mainAxisSpacing: 24.h, // Vertical spacing between items
            mainAxisExtent: 130, // Adjust the aspect ratio
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                ///<======================= categories image ============================>
                CustomImage(
                  imageSrc: controller.categoriesList[index]['image'],
                  imageType: ImageType.png,
                  size: 96.h,
                ),

                ///<======================= categories name ============================>
                CustomText(
                  text: controller.categoriesList[index]['name'],
                  top: 4.h,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
