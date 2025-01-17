// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:taskio/main.dart';
import 'package:taskio/utils/colors.dart';
import 'package:taskio/widgets/card_home.dart';
import 'package:taskio/widgets/text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appbar,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: AppColor.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),title: Texts(
                    text: 'Krishnapriya K ',
                    fonstsize: height * 0.02,
                    fontWeight: FontWeight.w500,
                    color: AppColor.white) ,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: height * 0.02,
                  foregroundImage: AssetImage('assets/girl.jpg'),
                ),

                // Icon(Icons.person, color: AppColor.white),
                SizedBox(width: 10),
                
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [Color(0xff218086), Color(0xff27528E)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              )),
              child: Text(
                'List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {},
            ),
            // Add more items here
          ],
        ),
      ),
      body: Container(
        color: AppColor.white,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage(
        //         'assets/bcgd.png'), // Replace with your background image
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Texts(
                    text: 'Current Tasks',
                    fonstsize: height * 0.03,
                    fontWeight: FontWeight.bold,
                    color: AppColor.textfieldbordercolor),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('taskdetails');
                      },
                      child: CardHome(
                        title: 'Task $index',
                        subtitle: 'sreelekshmi',
                        percentage: 0.75,
                        date: '24-08-2023',
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
