// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tiktok/Auth/signup.dart';
import 'package:tiktok/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tiktok/controllers/authcontroller.dart';

void main() async {
  //so the framework knows that widgets have been initialized
  WidgetsFlutterBinding.ensureInitialized();
  // this firebase will initalize the app for us
  await Firebase.initializeApp().then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: MyColors.BackgroundColor),
      home: SignupPage(),
    );
  }
}
