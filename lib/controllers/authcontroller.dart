import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
//create method for registering user
  void reguser(String username, String email, String pass, File? image) async {
//try cath will listen to any errors
    try {
      if (username.isNotEmpty &&
          pass.isNotEmpty &&
          email.isNotEmpty &&
          image != null)
      //save user data in firebase
      {}
    } catch (e) {
      Get.snackbar("Add Right Information", e.toString());
    }
  }
}
