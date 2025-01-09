import 'package:flutter/material.dart';
import 'package:taskio/utils/colors.dart';
import 'package:taskio/widgets/button.dart';
import 'package:taskio/widgets/sizedBox.dart';
import 'package:taskio/widgets/text.dart';

import '../main.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

  List tasksStatus = ['Completed','Pending','Overdue','All Tasks'];
  TextEditingController username = TextEditingController();
  TextEditingController useremail = TextEditingController();
  TextEditingController userphone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        backgroundColor: AppColor.textfieldbordercolor,
        title: Texts(
            text: 'Profile',
            fonstsize: height * 0.025,
            fontWeight: FontWeight.w400,
            color: AppColor.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(height * 0.03),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:  AppColor.appbar,
                      radius: height * 0.08,
                      backgroundImage: AssetImage('assets/girl.jpg'),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Text('User Name'.toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: height * 0.03)),
                        ),
                        Container(
                          child: Text('FLUTTER DEVELOPER',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: height * 0.012)),
                        ),
                        InkWell(
                          onTap: ()=>Navigator.of(context).pushNamed('profileEdit'),
                          child: Icon(Icons.edit))
                      ],
                    ),
                  ],
                ),
                SizedBoxs(),
                Divider(),
               SizedBoxs(),
                Texts(
                    text: 'My Tasks',
                    fonstsize: height * 0.022,
                    fontWeight: FontWeight.w600,
                    color: AppColor.black),
                SizedBox(
                  height: height * 0.015,
                ),
                Container(
                  height: height * 0.39,
                  width: width * 5,
                  // color: AppColor.greyclr,
                  child: GridView.builder(
                      itemCount: tasksStatus.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Container(
                            height: height * 0.015,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(height * 0.01),
                              color: AppColor.bgdblue,
                            ),
                            child: Texts(
                                text: tasksStatus[0],
                                fonstsize: height * 0.015,
                                fontWeight: FontWeight.w500,
                                color: AppColor.textfieldbordercolor),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          Buttons(
            text: 'LogOut',
            onTapto: () {},
          ),
          SizedBox(
            height: height * 0.01,
          ),
        ],
      ),
    );
  }
}
