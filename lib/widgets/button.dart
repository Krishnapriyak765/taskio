import 'package:flutter/material.dart';
import 'package:taskio/main.dart';

class Buttons extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const Buttons({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            bottom: 13.0,
            left: 16.0,
            right: 16.0,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                width: width * 0.7,
                height: height * 0.05,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff27528E),
                      Color(0xff30969D),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Text(text,
                      style:
                          const TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ))
      ],
    );
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
