// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:tiktok/constants.dart';
import 'package:tiktok/main.dart';

class AuthController extends GetxController {
  // upload image to firebase storage
  Future<String> _uploadImagetoStorage(File image) async {
    Reference ref = FirebaseStorage.instance
        .ref()
        .child("Profile")
        .child(FirebaseAuth.instance.currentUser!.uid);
    //upload image to firebase

    UploadTask uploadTask = ref.putFile(image);
    //take image from gallery and send to upload task
    TaskSnapshot snap = await uploadTask;

    String downloadurl = await snap.ref.getDownloadURL();
    return downloadurl;
  }

//create method for registering user
  void reguser(String username, String email, String pass, File? image) async {
//try cath will listen to any errors
    try {
      if (username.isNotEmpty &&
          pass.isNotEmpty &&
          email.isNotEmpty &&
          image != null) {
        //save user data in firebase

        UserCredential cred =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: pass,
        );
        _uploadImagetoStorage(image);
      }
    } catch (e) {
      Get.snackbar("Add Right Information", e.toString());
    }
  }
}
