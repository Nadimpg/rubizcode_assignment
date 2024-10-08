import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rubizcode_assignment/core/custom_assets/assets.gen.dart';

class HomeController extends GetxController{
  RxInt selectedIndex=0.obs;
  final ScrollController scrollController = ScrollController();

  List<Widget> categories=[
    Assets.images.national.image(),
    Assets.images.international.image(),
    Assets.images.sports.image(),
    Assets.images.finance.image(),
    Assets.images.politics.image(),
  ];

  @override
  void dispose() {
    scrollController.dispose(); // Dispose the controller to avoid memory leaks
    super.dispose();
  }

}