import 'package:flutter/material.dart';
import 'package:taskio/navigation/bottom_navigation.dart';
import 'package:taskio/screens/account.dart';
import 'package:taskio/screens/add_task.dart';
import 'package:taskio/screens/home.dart';
import 'package:taskio/screens/login.dart';
import 'package:taskio/screens/profile_edit.dart';
import 'package:taskio/screens/sign_up.dart';
import 'package:taskio/screens/splash_screen.dart';
import 'package:taskio/screens/task_details.dart';
import 'package:taskio/screens/task_updation.dart';

var height;
var width;

Color textClr = const Color(0xff4978BA);
Color textboxClr = const Color(0xffCCCCCC);
Color greyclr = const Color(0xffDDDDDD);

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: textClr,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: const Size(150, 40)),
          ),
          inputDecorationTheme: InputDecorationTheme(
            floatingLabelStyle: TextStyle(color: textClr),
            labelStyle: TextStyle(color: textClr, fontSize: 18),
            contentPadding: const EdgeInsets.only(
              left: 30,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide()),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: textClr)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: textClr),
            ),
          )),
      routes: {
        'addtask': (context) => AddTask(),
        'taskdetails': (context) => taskdetails(),
        'bottomNav': (context) => BottomNavigation(),
        'profileEdit': (context) => ProfileEdit(),
        'splash': (context) => SplashScreen(),
        'login': (context) => LoginPage(),
        'home': (context) => HomePage(),
        'taskupdation': (context) => TaskUpdation(taskName: ''),
        'signup': (context) => SignUp(),
        'account': (context) => Account(),
      },
    );
  }
}
