// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tiktok/constants.dart';

class Textform extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hintext;
  final IconData icon;
  final bool isobsecure;

  Textform(
      {super.key,
      required this.label,
      required this.hintext,
      required this.icon,
      required this.controller,
      this.isobsecure = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isobsecure,
      decoration: InputDecoration(
          label: Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
          hintText: hintext,
          prefixIcon: Icon(
            icon,
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.BorderColor),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.BorderColor),
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}
