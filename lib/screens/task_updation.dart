// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_print, prefer_const_constructors_in_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:taskio/utils/colors.dart';

class TaskUpdation extends StatefulWidget {
 final String taskName;

TaskUpdation({required this.taskName});

 @override
 State<TaskUpdation> createState() => _TaskUpdationState();
}

class _TaskUpdationState extends State<TaskUpdation> {
 final _formKey = GlobalKey<FormState>();
 final _taskNameController = TextEditingController();
 final _currentStatusController = TextEditingController();
 final _dateController = TextEditingController();
 final _remarkController = TextEditingController();

 @override
 void initState() {
   super.initState();
   _taskNameController.text = widget.taskName;
 }

 @override
 Widget build(BuildContext context) {
   final  w = MediaQuery.of(context).size.width;
   final h=MediaQuery.of(context).size.height;
   return SafeArea(
     child: Scaffold(
      
       appBar: AppBar(
         backgroundColor: AppColor.textfieldbordercolor,
         title: Text('Task Updation'),
       ),
       body: Container(
        //  decoration: BoxDecoration(
        //    image: DecorationImage(
        //      image: AssetImage('assets/bcgd.png'), // Replace with your background image
        //      fit: BoxFit.cover,
        //    ),
        //  ),
         child: Form(
         key: _formKey,
         child: Column(
             children: [
             SizedBox(height: h*0.10),
         Expanded(
           flex: 4,
           child: Padding(
             padding: const EdgeInsets.all(15.0),
             child: Container(
               padding: EdgeInsets.only(
                   left: 20,
                   right: 20,
                   top: 20
               ),
               decoration: BoxDecoration(
                 color: Colors.white60,
                 border: Border.all(
                     color:  Colors.transparent
                 ),
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.zero,
                   topRight: Radius.circular(25),
                   topLeft: Radius.circular(25),
                   bottomRight:  Radius.circular(25),
                 ),
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch, // Ensure children take full width
                 children: [ TextFormField(
                         controller: _taskNameController,
                         decoration: InputDecoration(
                           labelText: 'Task Name',
                           border: OutlineInputBorder(),
                         ),
                       ),
                     SizedBox(height: 20),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                         controller: _currentStatusController,
                         decoration: InputDecoration(
                           labelText: 'Current Status',
                           border: OutlineInputBorder(),
                         ),
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter current status';
                           }
                           return null;
                         },
                       ),
                     ),
                     SizedBox(height: 20),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child:
                           TextFormField(
                             controller: _dateController,
                             decoration: InputDecoration(
                               labelText: 'dd/mm/yyyy',
                               border: OutlineInputBorder(),
                             ),
                             validator: (value) {
                               if (value == null || value.isEmpty) {
                                 return 'Please enter date';
                               }
                               return null;
                             },
                           ),
                       ),
                     SizedBox(height: 20),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                         controller: _remarkController,
                         decoration: InputDecoration(

                           hintText: 'Remark',
                           border: OutlineInputBorder(),
                           // Adjust the height and width of the input field
                           contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                         ),
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter remark';
                           }
                           return null;
                         },
                       ),
                     ),
                     SizedBox(height: 20),
                     ElevatedButton( style: ElevatedButton.styleFrom(
                       backgroundColor: Color(0xff27528E),
                     ),
                       onPressed: () {
                         if (_formKey.currentState!.validate()) {
                           print('Task Name: ${_taskNameController.text}');
                           print('Current Status: ${_currentStatusController.text}');
                           print('Date: ${_dateController.text}');
                           print('Remark: ${_remarkController.text}');
                         }
                       },
                       child: Text('Submit', style: TextStyle(fontSize: 18, color: Colors.black),),
                     ),
                   ],
                 ),
               ),
             ),
           ),
         ],
         ),
         ),
       )
   )
   );
 }
}

