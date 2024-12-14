// // import 'package:dio/dio.dart';
// // import 'package:dropdown_search/dropdown_search.dart';
// // import 'package:example/bottom_sheets.dart';
// // import 'package:example/dialogs.dart';
// // import 'package:example/menus.dart';
// // import 'package:example/modals.dart';
// // import 'package:example/user_model.dart';
// // import 'package:flutter/material.dart';

// // void main() => runApp(MyApp());

// // Future<List<UserModel>> getData(filter) async {
// //   var response = await Dio().get(
// //     "https://63c1210999c0a15d28e1ec1d.mockapi.io/users",
// //     queryParameters: {"filter": filter},
// //   );

// //   final data = response.data;
// //   if (data != null) {
// //     return UserModel.fromJsonList(data);
// //   }

// //   return [];
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'dropdownSearch Demo',
// //       //enable this line if you want test Dark Mode
// //       //theme: ThemeData.dark(),
// //       home: MyHomePage(),
// //     );
// //   }
// // }

// // class MyHomePage extends StatelessWidget {
// //   final dropDownKey = GlobalKey<DropdownSearchState>();

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('examples mode')),
// //       body: ListView(
// //         padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
// //         children: [
// //           Row(
// //             children: [
// //               Expanded(
// //                 child: DropdownSearch<String>(
// //                   key: dropDownKey,
// //                   selectedItem: "Menu",
// //                   items: (filter, infiniteScrollProps) =>
// //                       ["Menu", "Dialog", "Modal", "BottomSheet"],
// //                   decoratorProps: DropDownDecoratorProps(
// //                     decoration: InputDecoration(
// //                       labelText: 'Examples for: ',
// //                       border: OutlineInputBorder(),
// //                     ),
// //                   ),
// //                   popupProps: PopupProps.menu(
// //                       fit: FlexFit.loose, constraints: BoxConstraints()),
// //                 ),
// //               ),
// //               Padding(padding: EdgeInsets.only(right: 16)),
// //               FilledButton(
// //                 onPressed: () {
// //                   switch (dropDownKey.currentState?.getSelectedItem) {
// //                     case 'Menu':
// //                       Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => MenuExamplesPage()));
// //                       break;
// //                     case 'Modal':
// //                       Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => ModalsExamplesPage()));
// //                       break;
// //                     case 'BottomSheet':
// //                       Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => BottomSheetExamplesPage()));
// //                       break;
// //                     case 'Dialog':
// //                       Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => DialogExamplesPage()));
// //                       break;
// //                   }
// //                 },
// //                 child: Text("Go"),
// //               )
// //             ],
// //           ),
// //           Padding(padding: EdgeInsets.all(8)),
// //           RichText(
// //             text: TextSpan(
// //               style: const TextStyle(fontSize: 14.0, color: Colors.black),
// //               children: [
// //                 TextSpan(text: 'we used '),
// //                 TextSpan(
// //                     text: 'fit: FlexFit.loose',
// //                     style: TextStyle(fontWeight: FontWeight.bold)),
// //                 TextSpan(text: ' and '),
// //                 TextSpan(
// //                     text: 'constraints: BoxConstraints() ',
// //                     style: TextStyle(fontWeight: FontWeight.bold)),
// //                 TextSpan(
// //                     text:
// //                         'to fit the height of menu automatically to the length of items'),
// //               ],
// //             ),
// //           ),
// //           Padding(padding: EdgeInsets.only(top: 20)),
// //           Text(
// //             'DropdownSearch Anatomy',
// //             style: TextStyle(
// //                 fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
// //             textAlign: TextAlign.center,
// //           ),
// //           Image.asset('assets/images/anatomy.png',
// //               alignment: Alignment.topCenter, height: 1024)
// //         ],
// //       ),
// //     );
// //   }
// // }







// //-----------------------
// Container(
//                     height: height * 0.40,
//                     width: width * 1,
//                     margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
//                     decoration: BoxDecoration(
//                       // color: Colors.white10,
//                       color: Color.fromARGB(255, 255, 255, 255),
//                       borderRadius: BorderRadius.only(
//                         bottomRight: Radius.circular(50),
//                         topLeft: Radius.circular(50),
//                         topRight: Radius.circular(50),
//                       ),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 15, right: 15),
//                       child: ListView(
//                         children: [
//                           SizedBox(height: height * 0.04),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'SIGN UP',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20,
//                                   color: textClr,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: height * 0.05),
//                           TextFields(
//                               labeltxt: 'Name', textcontroller: textName),
//                           const SizedBoxs(),
//                           TextFields(
//                               labeltxt: 'Email', textcontroller: textEmail),
//                           const SizedBoxs(),
//                           TextFields(
//                               labeltxt: 'Password', textcontroller: textPswd),
//                           const SizedBoxs(),
//                           TextFields(
//                               labeltxt: 'ReferalCode',
//                               textcontroller: textReferralCode),
//                           const SizedBoxs(),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               ElevatedButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pushNamed('bottomNav');
//                                 },
//                                 child: const Text(
//                                   'SIGN UP',
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: height * 0.01,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Already have an account?',
//                                 style: TextStyle(fontSize: height * 0.012),
//                               ),
//                               InkWell(
//                                   onTap: () =>
//                                       Navigator.of(context).pushNamed('login'),
//                                   child: Text('  Login',
//                                       style: TextStyle(
//                                           fontSize: height * 0.012,
//                                           color: textClr))),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),


 