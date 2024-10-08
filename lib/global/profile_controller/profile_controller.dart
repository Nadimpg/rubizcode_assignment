import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  ///<================================================This is for pick image=============================>
  File? proImage;
  String? proImgURL = "";

  void openGallery() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      proImage = File(pickedFile.path);
      update();
    }
  }

  ///<====================================== edit profile =============================>
  TextEditingController nameController = TextEditingController();
  TextEditingController phnNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  bool isGender=false;
}
