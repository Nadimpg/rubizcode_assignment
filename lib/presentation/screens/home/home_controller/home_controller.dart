import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rubizcode_assignment/core/custom_assets/assets.gen.dart';
import 'package:rubizcode_assignment/utils/AppImg/app_img.dart';
import 'package:rubizcode_assignment/utils/static_strings/static_strings.dart';

class HomeController extends GetxController{
  RxInt selectedIndex=0.obs;
  final ScrollController scrollController = ScrollController();

  ///<=========================== categoris image list ============================>
  RxList<String> categories = RxList<String>([
    AppImages.national,
    AppImages.international,
    AppImages.politics,
    AppImages.finance,
    AppImages.entertainment,
  ]);
  RxList<int> currentNewsIndex = RxList<int>.generate(5, (index) => 0);

  ///<=========================== categoris Name list ============================>
  RxList<String> categoriesName = RxList<String>([
    'National',
    'International',
    'Politics',
    'Finance',
    'Entertainment',
  ]);

///<=========================== Define a list of maps directly =========================>
  RxList<List<RxMap<String, dynamic>>> categoriesNews = <List<RxMap<String, dynamic>>>[
    [
      {
        'image': AppImages.dummyImage,
        'news': 'কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা'
      }.obs,
      {
        'image': AppImages.dummyImage,
        'news': 'কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা'
      }.obs,
      {
        'image': AppImages.dummyImage,
        'news': 'কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা'
      }.obs,
      {
        'image': AppImages.dummyImage,
        'news': 'কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা'
      }.obs,
      {
        'image': AppImages.dummyImage,
        'news': 'কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা'
      }.obs,
    ],
    [
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
    ],
    [
      {
        'image': AppImages.dummyImage,
        'news': 'কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা'
      }.obs,
      {
        'image': AppImages.dummyImage,
        'news': 'কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা'
      }.obs,
      {
        'image': AppImages.dummyImage,
        'news': 'কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা'
      }.obs,
      {
        'image': AppImages.dummyImage,
        'news': 'কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা'
      }.obs,
      {
        'image': AppImages.dummyImage,
        'news': 'কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা'
      }.obs,
    ],
    [
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
    ],
    [
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
      {
        'image': AppImages.dummy,
        'news': 'এফবিআই দেশটির সাবেক প্রেসিডেন্ট ডোনাল্ড ট্রাম্প'
      }.obs,
    ],
  ].obs;

  @override
  void dispose() {
    scrollController.dispose(); // Dispose the controller to avoid memory leaks
    super.dispose();
  }

}