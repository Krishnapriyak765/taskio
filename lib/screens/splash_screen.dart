// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, file_names, unused_import

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:taskio/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
  with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2100),
    )..forward();
    _animation =
        Tween<double>(begin: 0.0, end: 1.6).animate(_animationController);
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff218086), Color(0xff27528E)],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )),
        child: Center(
          child: SizeTransition(
            sizeFactor: _animation,
            child: Image.asset('assets/logoName.png'),
          ),
        ),
      ),
    );
  }
}
