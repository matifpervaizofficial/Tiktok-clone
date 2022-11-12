// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tiktok/constants.dart';
import 'package:tiktok/widgets/textformfield.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.BackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Create Profile",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        "https://www.citypng.com/public/uploads/preview/download-black-male-user-profile-icon-png-116371332534k5baafcll.png"),
                  ),
                  Positioned(
                      left: 100,
                      bottom: -5,
                      child: GestureDetector(
                        onTap: () {
                          print("Working");
                        },
                        child: Icon(
                          Icons.photo_camera,
                          size: 30,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Textform(
                    controller: _emailcontroller,
                    label: "Name",
                    hintext: "Enter Your Name",
                    icon: Icons.person),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Textform(
                    controller: _emailcontroller,
                    label: "Email",
                    hintext: "Enter Your email",
                    icon: Icons.email_outlined),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Textform(
                    isobsecure: true,
                    controller: _passcontroller,
                    label: "Password",
                    hintext: "Enter Your Password",
                    icon: Icons.lock),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width - 40,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.ButtonColor),
                  onPressed: () {},
                  label: Text("Signup"),
                  icon: Icon(Icons.account_box_outlined),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
