import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rubizcode_assignment/core/custom_assets/assets.gen.dart';
import 'package:rubizcode_assignment/utils/AppImg/app_img.dart';
import 'package:rubizcode_assignment/utils/static_strings/static_strings.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  final ScrollController scrollController = ScrollController();

  ///<=========================== categorises list ============================>
  RxList<RxMap<String, dynamic>> categories = RxList<RxMap<String, dynamic>>([
    {
      'image': AppImages.national,
      'name': 'National',
    }.obs,
    {
      'image': AppImages.international,
      'name': 'International',
    }.obs,
    {
      'image': AppImages.politics,
      'name': 'Politics',
    }.obs,
    {
      'image': AppImages.finance,
      'name': 'Finance',
    }.obs,
    {
      'image': AppImages.entertainment,
      'name': 'Entertainment',
    }.obs,
  ]);
  RxList<int> currentNewsIndex = RxList<int>.generate(5, (index) => 0);

  ///<=========================== Define a list of maps directly =========================>
  RxList<List<RxMap<String, dynamic>>> categoriesNews =
      <List<RxMap<String, dynamic>>>[
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

  ///<=========================== categoris image list ============================>
  RxList<RxMap<String, dynamic>> categoriesList = RxList<RxMap<String, dynamic>>([
    {
      'image': AppImages.national,
      'name':  'National',
    }.obs,
    {
      'image': AppImages.international,
      'name': 'International',
    }.obs,
    {
      'image': AppImages.politics,
      'name': 'Politics',
    }.obs,
    {
      'image': AppImages.finance,
      'name': 'Finance',
    }.obs,
    {
      'image': AppImages.entertainment,
      'name':  'Entertainment',
    }.obs,
    {
      'image': AppImages.national,
      'name':  'National',
    }.obs,
    {
      'image': AppImages.international,
      'name': 'International',
    }.obs,
    {
      'image': AppImages.politics,
      'name': 'Politics',
    }.obs,
    {
      'image': AppImages.finance,
      'name': 'Finance',
    }.obs,
    {
      'image': AppImages.entertainment,
      'name':  'Entertainment',
    }.obs,
    {
      'image': AppImages.national,
      'name':  'National',
    }.obs,
    {
      'image': AppImages.international,
      'name': 'International',
    }.obs,
    {
      'image': AppImages.politics,
      'name': 'Politics',
    }.obs,
    {
      'image': AppImages.finance,
      'name': 'Finance',
    }.obs,
    {
      'image': AppImages.entertainment,
      'name':  'Entertainment',
    }.obs,
  ]);

  @override
  void dispose() {
    scrollController.dispose(); // Dispose the controller to avoid memory leaks
    super.dispose();
  }
}
