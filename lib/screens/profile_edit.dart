import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskio/functions/imgpicker_camera.dart';
import 'package:taskio/utils/colors.dart';
import 'package:taskio/widgets/button.dart';
import 'package:taskio/widgets/image_picker.dart';
import 'package:taskio/widgets/sizedBox.dart';
import 'package:taskio/widgets/textform_inside.dart';

import '../main.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  TextEditingController username = TextEditingController();
  TextEditingController useremail = TextEditingController();
  TextEditingController userphone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:   textClr,
      appBar: AppBar(
        backgroundColor: textClr,
        title: Text(
          'Profile Edit',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(height * 0.04),
          child: Column(
            children: [
              imageUrl == ''
                  ? Center(
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    insetPadding: EdgeInsets.only(
                                        bottom: width * .7,
                                        top: width * 0.7,
                                        right: width * 0.1,
                                        left: width * 0.1),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(45.0))),
                                    contentPadding:
                                        EdgeInsets.all(width * 0.09),
                                    content: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            PickImage();
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            height: width * 0.09,
                                            width: width * 0.4,
                                            decoration: BoxDecoration(
                                                color: Color(0xffB3B3B3),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Center(
                                                child: Text(
                                              'Camera',
                                              style: GoogleFonts.outfit(
                                                  fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            pickGallery();
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            height: width * 0.09,
                                            width: width * 0.4,
                                            decoration: BoxDecoration(
                                                color: Color(0xffB3B3B3),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Center(
                                                child: Text(
                                              'Gallery',
                                              style: GoogleFonts.outfit(
                                                  fontSize: 15),
                                            )),
                                          ),
                                        ),
                                      ],
                                    ));
                              });
                        },
                        child: Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: greyclr,
                              radius: height * 0.08,
                              backgroundImage: AssetImage('assets/girl.jpg'),
                            ),
                            Positioned(
                                top: height * 0.11,
                                left: width * 0.26,
                                child: CircleAvatar(
                                    backgroundColor:
                                        AppColor.textfieldbordercolor,
                                    radius: height * 0.02,
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: height * 0.023,
                                      color: Colors.white,
                                    )))
                          ],
                        ),
                      ),
                    )
                  : Center(
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    insetPadding: EdgeInsets.only(
                                        bottom: width * .7,
                                        top: width * 0.7,
                                        right: width * 0.1,
                                        left: width * 0.1),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(45.0))),
                                    contentPadding:
                                        EdgeInsets.all(width * 0.09),
                                    content: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            PickImage();
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            height: width * 0.09,
                                            width: width * 0.4,
                                            decoration: BoxDecoration(
                                                color: Color(0xffB3B3B3),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Center(
                                                child: Text(
                                              'Camera',
                                              style: GoogleFonts.outfit(
                                                  fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            pickGallery();
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            height: width * 0.09,
                                            width: width * 0.4,
                                            decoration: BoxDecoration(
                                                color: Color(0xffB3B3B3),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Center(
                                                child: Text(
                                              'Gallery',
                                              style: GoogleFonts.outfit(
                                                  fontSize: 15),
                                            )),
                                          ),
                                        ),
                                      ],
                                    ));
                              });
                        },
                        child: Container(
                          height: height * 0.13,
                          width: width * 0.28,
                          child: Stack(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xffB3B3B3),
                                radius: width * 0.1,
                                backgroundImage:
                                    CachedNetworkImageProvider(imageUrl),
                              ),
                              Positioned(
                                  top: 50,
                                  left: 55,
                                  child: CircleAvatar(
                                      backgroundColor: AppColor.textboxClr,
                                      radius: 15,
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: height * 0.023,
                                        color: Colors.white,
                                      )))
                            ],
                          ),
                        ),
                      ),
                    ),

              SizedBoxs(),

              TextformInside(
                tcontroller: username,
                hintText: 'User Name',
                labelText: 'Name',
                icons: Icon(
                  Icons.person,
                  color: AppColor.textfieldbordercolor,
                ),
              ),
              SizedBoxs(),

              TextformInside(
                tcontroller: useremail,
                hintText: 'User Email',
                labelText: 'email',
                icons: Icon(
                  Icons.email,
                  color: AppColor.textfieldbordercolor,
                ),
              ), // Task Description

              SizedBoxs(),
              TextformInside(
                tcontroller: userphone,
                hintText: 'user Phone',
                labelText: 'Phone',
                icons: Icon(
                  Icons.phone,
                  color: AppColor.textfieldbordercolor,
                ),
              ), // Task Description

              SizedBox(
                height: height * 0.1,
              ),
              Buttons(
                text: 'Update',
                onTapto: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
