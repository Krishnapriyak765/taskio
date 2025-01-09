import 'package:flutter/material.dart';
import 'package:taskio/main.dart';
import 'package:taskio/utils/colors.dart';
import 'package:taskio/widgets/SizedBox.dart';
import 'package:taskio/widgets/background_image.dart';
import 'package:taskio/widgets/button.dart';
import 'package:taskio/widgets/logintextfield.dart';
import 'package:taskio/widgets/logo.dart';
import 'package:taskio/widgets/text.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController textName = TextEditingController();
  TextEditingController textEmail = TextEditingController();
  TextEditingController textPswd = TextEditingController();
  TextEditingController textReferralCode = TextEditingController();
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
                SizedBox(height: height * 0.06),
                const Logo(),
                SizedBox(height: height * 0.05),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: height * 0.40,
                    width: width * 1,
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
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
                                  text: 'SIGN UP',
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
                              labeltxt: 'Name',
                              textcontroller: textName),
                          const SizedBoxs(),
                          TextFields(
                              icon: Icon(
                                Icons.email,
                                color: AppColor.textfieldbordercolor,
                              ),
                              labeltxt: 'Email',
                              textcontroller: textEmail),
                          const SizedBoxs(),
                          TextFields(
                              icon: Icon(
                                Icons.lock,
                                color: AppColor.textfieldbordercolor,
                              ),
                              labeltxt: 'Password',
                              textcontroller: textPswd),
                          const SizedBoxs(),
                          TextFields(
                            icon: Icon(
                              Icons.code,
                              color: AppColor.textfieldbordercolor,
                            ),
                            labeltxt: 'ReferalCode',
                            textcontroller: textReferralCode,
                          ),
                          const SizedBoxs(),
                          Buttons(
                            text: 'SIGN UP',
                            onTapto: () =>
                                Navigator.of(context).pushNamed('bottomNav'),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Texts(
                                  text: 'Already have an account? ',
                                  fonstsize: height * 0.015,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.black),
                              InkWell(
                                  onTap: () =>
                                      Navigator.of(context).pushNamed('login'),
                                  child: Texts(
                                      text: ' Login',
                                      fonstsize: height * 0.017,
                                      fontWeight: FontWeight.w900,
                                      color: AppColor.textfieldbordercolor)),
                            ],
                          )
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
