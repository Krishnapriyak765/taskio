import 'package:flutter/material.dart';
import 'package:taskio/main.dart';
import 'package:taskio/utils/colors.dart';

class TextformInside extends StatelessWidget {
  final TextEditingController tcontroller;
  final String hintText;
 
  final Icon icons;
  const TextformInside(
      {super.key,
      required this.tcontroller,
      required this.hintText,
      required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 1,
      height: height * 0.055,
      decoration: BoxDecoration(
        color: AppColor.bgdblue,
        borderRadius: BorderRadius.circular(height * 0.01),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: TextFormField(
          controller: tcontroller,
          cursorColor: AppColor.textfieldbordercolor,
          style: TextStyle(
              color: AppColor.textfieldbordercolor,
              fontWeight: FontWeight.w500),
          autofocus: false,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: hintText,
            // labelText: labelText,
            labelStyle: TextStyle(
                color: AppColor.textfieldbordercolor,
                fontWeight: FontWeight.w200,
                fontSize: height * 0.02),
            hintStyle: TextStyle(
                color: AppColor.textfieldbordercolor,
                fontWeight: FontWeight.w200),
            prefixIcon: icons,
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
