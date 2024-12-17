import 'package:flutter/material.dart';
import 'package:taskio/main.dart';

class TextContainer extends StatelessWidget {
  final String text;
  const TextContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('User Name'.toUpperCase(),
          style:
              TextStyle(fontWeight: FontWeight.w600, fontSize: height * 0.03)),
    );
  }
}
