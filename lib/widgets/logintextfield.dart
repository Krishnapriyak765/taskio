import 'package:flutter/material.dart';
import 'package:taskio/utils/colors.dart';

class TextFields extends StatefulWidget {
  final String labeltxt;
  final TextEditingController textcontroller;
  const TextFields(
      {super.key, required this.labeltxt, required this.textcontroller});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25),
      child: TextFormField(
        cursorColor: AppColor.textfieldbordercolor,
        controller: widget.textcontroller,
        autofocus: true,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          labelText: widget.labeltxt,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
