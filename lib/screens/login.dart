// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:taskio/main.dart';
import 'package:taskio/utils/colors.dart';
import 'package:taskio/widgets/background_image.dart';
import 'package:taskio/widgets/button.dart';
import 'package:taskio/widgets/logintextfield.dart';
import 'package:taskio/widgets/logo.dart';
import 'package:taskio/widgets/sizedBox.dart';
import 'package:taskio/widgets/socialmedia_login.dart';
import 'package:taskio/widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';

// Make sure this is correct

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isSecurePassword = true;
  final _formKey = GlobalKey<FormState>(); // Key for form validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            const IconBackground(),
            Column(
              children: [
                SizedBox(height: height * 0.08),
                const Logo(),
                SizedBox(height: height * 0.08),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: height * 0.30,
                    width: width * 1,
                    margin:
                        const EdgeInsets.only(left: 25, right: 20, bottom: 20),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: ListView(
                        children: [
                          SizedBox(height: height * 0.04),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Texts(
                                  text: 'LOGIN',
                                  fonstsize: height * 0.03,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.textfieldbordercolor)
                            ],
                          ),
                          SizedBox(height: height * 0.05),
                          TextFields(
                              icon: Icon(
                                Icons.person,
                                color: AppColor.textfieldbordercolor,
                              ),
                              labeltxt: 'User',
                              textcontroller: _usernameController),
                          const SizedBoxs(),
                          TextFields(
                              icon: Icon(
                                Icons.lock,
                                color: AppColor.textfieldbordercolor,
                              ),
                              labeltxt: 'Password',
                              textcontroller: _passwordController),
                          const SizedBoxs(),
                          Buttons(
                            text: 'LOGIN',
                            onTapto: () {
                              Navigator.of(context).pushNamed('bottomNav');
                            },
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     // Buttons(text: 'SIGNUP')
                          //     ElevatedButton(
                          //       onPressed: () {
                          //         Navigator.of(context).pushNamed('bottomNav');
                          //       },
                          //       child: const Text(
                          //         'LOGIN',
                          //         style: TextStyle(color: Colors.white),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Center(
                            child: Texts(
                                text: 'forgot password?',
                                fonstsize: height * 0.015,
                                fontWeight: FontWeight.w900,
                                color: AppColor.textfieldbordercolor),
                          ),
                          SizedBoxs(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Texts(
                                  text: 'Dont have an account? ',
                                  fonstsize: height * 0.015,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.black),
                              InkWell(
                                  onTap: () =>
                                      Navigator.of(context).pushNamed('signup'),
                                  child: Texts(
                                      text: ' SignUp',
                                      fonstsize: height * 0.017,
                                      fontWeight: FontWeight.w900,
                                      color: AppColor.textfieldbordercolor)),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SocialMediaLogin(
                                  url: 'https://www.google.com/login/',
                                  image: "assets/google1.png"),
                              SizedBox(width: 20), // Space between icons
                              GestureDetector(
                                onTap: () async {
                                  final Uri url = Uri.parse(
                                      'https://www.applel.com/login/');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/apple2.png"),
                                  radius: 13,
                                  backgroundColor: Color(0xff30969D),
                                ),
                              ),
                              SizedBox(width: 20),
                              GestureDetector(
                                onTap: () async {
                                  final Uri url = Uri.parse(
                                      'https://www.facebook.com/login/');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/facebook.png"),
                                  radius: 13,
                                  backgroundColor: Color(0xff30969D),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
