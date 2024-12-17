import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<void> PickImage() async {
  final imgfile =
      await ImagePicker.platform.pickImage(source: ImageSource.camera);

  File file = File(imgfile!.path);
}

void pickGallery() async {
  final imgfile =
      await ImagePicker.platform.pickImage(source: ImageSource.gallery);
  // showUploadMessage(context, 'Uploading...', showLoading: true);

  File file = File(imgfile!.path);
  // DocumentSnapshot id = await FirebaseFirestore.instance
  //     .collection('settings')
  //     .doc("settings")
  //     .get();
  // id.reference.update({"userImage": FieldValue.increment(1)});
  // var imageId = id['userImage'];

  //Upload to Firebase
  // var snapshot =
  //     await _firebaseStorage.ref().child('userImage/$imageId').putFile(file!);
  // var downloadUrl = await snapshot.ref.getDownloadURL();
  // setState(() {
  //   imageUrl = downloadUrl;
  //   imageList.add(imageUrl);
  //   showUploadMessage(context, 'Uploaded Successfully...');
  // });
  // if (mounted) {
  //   setState(() {
  //     file = File(imgfile.path);
  //   });
  // }
}
