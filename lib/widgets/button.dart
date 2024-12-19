import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskio/main.dart';
import 'package:taskio/utils/colors.dart';

class Buttons extends StatelessWidget {
  final String text;
  final VoidCallback? onTapto;
  const Buttons({super.key, required this.text, required this.onTapto});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: height * 0.05,
        width: width * 0.75,
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
    //
    // Stack(
    //   children: [
    //     Positioned(
    //         bottom: 13.0,
    //         left: 16.0,
    //         right: 16.0,
    //         child: GestureDetector(
    //           onTap: onTap,
    //           child: Container(
    //             width: width * 0.7,
    //             height: height * 0.05,
    //             decoration: const BoxDecoration(
    //               gradient: LinearGradient(
    //                 colors: [
    //                   Color(0xff27528E),
    //                   Color(0xff30969D),
    //                 ],
    //                 begin: Alignment.topLeft,
    //                 end: Alignment.bottomRight,
    //               ),
    //             ),
    //             child: Center(
    //               child: Text(text,
    //                   style:
    //                       const TextStyle(fontSize: 18, color: Colors.white)),
    //             ),
    //           ),
    //         ))
    //   ],
    // );
// -------------------------------------
    //  Align(
    //   alignment: Alignment.center,
    //   child: FloatingActionButton(
    //     onPressed: onTap,
    //     elevation: 0,
    //     child: Container(
    //       width: width * 0.7,
    //       height: height * 0.05,
    //       decoration: const BoxDecoration(
    //         gradient: LinearGradient(
    //           colors: [
    //             Color(0xff27528E),
    //             Color(0xff30969D),
    //           ],
    //           begin: Alignment.topLeft,
    //           end: Alignment.bottomRight,
    //         ),
    //       ),
    //       child: Center(
    //         child: Text(text,
    //             style: const TextStyle(fontSize: 18, color: Colors.white)),
    //       ),
    //     ),
    //   ),
    // );
  }
}
