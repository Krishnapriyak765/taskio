import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:taskio/screens/account.dart';
import 'package:taskio/screens/add_task.dart';
import 'package:taskio/screens/home.dart';
import 'package:taskio/screens/task_updation.dart';
import 'package:taskio/utils/colors.dart';

import '../main.dart';

/// Flutter code sample for [BottomNavigationBar].

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AddTask(),
    TaskUpdation(taskName: ''),
    Account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  GlobalKey<CurvedNavigationBarState> _curvednavigationkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),

      bottomNavigationBar: CurvedNavigationBar(
        height: height * 0.055,
        key: _curvednavigationkey,
        items: [
          Icon(
            Icons.home,
            color: AppColor.textfieldbordercolor,
          ),
          Icon(
            Icons.add,
            color: AppColor.textfieldbordercolor,
          ),
          Icon(
            Icons.update,
            color: AppColor.textfieldbordercolor,
          ),
          Icon(
            Icons.person,
            color: AppColor.textfieldbordercolor,
          ),
        ],
        backgroundColor: AppColor.textfieldbordercolor,
        buttonBackgroundColor: AppColor.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) => setState(
          () {
            _selectedIndex = index;
          },
        ),
        letIndexChange: (index) => true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      // BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'School',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
