import 'package:flutter/material.dart';
import 'package:taskio/main.dart';

class TextformInside extends StatelessWidget {
  final TextEditingController tcontroller;
  final String hintText;
  final String labelText;
  final Icon icons;
  const TextformInside(
      {super.key,
      required this.tcontroller,
      required this.hintText,
      required this.labelText,
      required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 1,
      height: height * 0.055,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(height * 0.01),
          boxShadow: [
            BoxShadow(color: greyclr, blurRadius: 4, spreadRadius: 2)
          ]),
      child: TextFormField(
        controller: tcontroller,
        cursorColor: textClr,
        style: TextStyle(color: textClr, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: hintText,
          labelText: labelText,
          hintStyle: TextStyle(color: textboxClr, fontWeight: FontWeight.w200),
          prefixIcon: icons,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
