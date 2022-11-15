// ignore_for_file: depend_on_referenced_packages

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class MyColors {
  static const BackgroundColor = Colors.black;

  static Color? ButtonColor = Colors.red[400];

  static const Color BorderColor = Colors.grey;

  //firebase constants
  var firebaseAuth = FirebaseAuth.instance;
  var fireStorage = FirebaseStorage.instance;
  var firestore = FirebaseFirestore.instance;
}
