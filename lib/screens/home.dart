// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:taskio/models/task_card';


class HomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       appBar: AppBar(
         backgroundColor: Color(0xff27528E),
         leading: Builder(
           builder: (context) => IconButton(
             icon: Icon(Icons.menu),
             onPressed: () => Scaffold.of(context).openDrawer(),
           ),
         ),
         actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Icon(Icons.person),
                 SizedBox(width: 10),
                 Text(
                   'Sreelekshmi',
                   style: TextStyle(fontSize: 18),
                 ),
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
                     colors: [Color(0xff218086),
                       Color(0xff27528E)],
                     begin: Alignment.bottomLeft,
                     end: Alignment.topRight,
                   )
               ),
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
       body:
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/bcgd.png'), // Replace with your background image
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: [
                 Text(
                   'Current Tasks',
                   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
                 Expanded(
                   child: ListView.builder(
                     itemCount: 10,
                     itemBuilder: (BuildContext context, int index) {
                       return GestureDetector(
                         onTap: () {
                           Navigator.of(context).pushNamed('taskdetails');
                         },
                         child: TaskCard(
                           taskName: 'Task $index',
                           status: 'In Progress',
                           percentage: 50,
                           assignedBy: 'Sreelekshmi',
                           date: '2023-10-01',
                         ),
                       );
                     },
                   ),
                 ),
               ],
             ),
                      ),
          ),
       ),
   );
 }
}

