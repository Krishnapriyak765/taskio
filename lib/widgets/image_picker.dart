import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskio/main.dart';
import 'package:taskio/utils/colors.dart';

List imageList = [];
String? photos = "";
// File? file;
// final _firebaseStorage = FirebaseStorage.instance;
String imageUrl = "";

class Imageupload extends StatelessWidget {
  const Imageupload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return imageUrl == ''
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(45.0))),
                          contentPadding: EdgeInsets.all(width * 0.09),
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  pickFilesCamera();
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: width * 0.09,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      color: Color(0xffB3B3B3),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text(
                                    'Camera',
                                    style: GoogleFonts.outfit(fontSize: 15),
                                  )),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  pickFileGallery();
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: width * 0.09,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      color: Color(0xffB3B3B3),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text(
                                    'Gallery',
                                    style: GoogleFonts.outfit(fontSize: 15),
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
                    backgroundColor: AppColor.greyclr,
                    radius: height * 0.08,
                    backgroundImage: AssetImage('assets/girl.jpg'),
                  ),
                  Positioned(
                      top: height * 0.11,
                      left: width * 0.26,
                      child: CircleAvatar(
                          backgroundColor: AppColor.textfieldbordercolor,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(45.0))),
                          contentPadding: EdgeInsets.all(width * 0.09),
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  pickFilesCamera();
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: width * 0.09,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      color: Color(0xffB3B3B3),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text(
                                    'Camera',
                                    style: GoogleFonts.outfit(fontSize: 15),
                                  )),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  pickFileGallery();
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: width * 0.09,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      color: Color(0xffB3B3B3),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text(
                                    'Gallery',
                                    style: GoogleFonts.outfit(fontSize: 15),
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
                      backgroundImage: CachedNetworkImageProvider(imageUrl),
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
          );
  }

  Future<void> pickFileGallery() async {
    final imgfile =
        await ImagePicker.platform.pickImage(source: ImageSource.gallery);

    File file = File(imgfile!.path);
  }

  void pickFilesCamera() async {
    final imgfile =
        await ImagePicker.platform.pickImage(source: ImageSource.camera);

    File file = File(imgfile!.path);
  }
}
