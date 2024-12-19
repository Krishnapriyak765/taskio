import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskio/main.dart';
import 'package:taskio/utils/colors.dart';

class LoginButtons extends StatelessWidget {
  final String text;
  final VoidCallback? onTapto;
  const LoginButtons({super.key, required this.text, required this.onTapto});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: height * 0.05,
        width: width * 04,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColor.textfieldbordercolor,
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000).withOpacity(0.15),
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(
                0,
                4,
              ),
            )
          ],
        ),
        child: InkWell(
          onTap: onTapto,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.ptSans(
                  color: Colors.white, fontWeight: FontWeight.w600,fontSize:height*0.02),
            ),
          ),
        ),
      ),
    );
  }}