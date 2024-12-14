import 'package:flutter/material.dart';

import '../main.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  TextEditingController username = TextEditingController();
  TextEditingController useremail = TextEditingController();
  TextEditingController userphone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:   textClr,
      appBar: AppBar(
         backgroundColor: textClr,
        title: Text('Profile Edit',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: height*1,
          //  decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(
          //           'assets/bcgd.png'), // Replace with your background image
          //       fit: BoxFit.contain,
          //     ),),
          child: Padding(
            padding:  EdgeInsets.all(height*0.04),
            child: Column(
              children: [
                CircleAvatar(backgroundColor: greyclr,radius: height*0.1,
                backgroundImage: AssetImage('assets/girl.jpg'),),
               
                SizedBox(
                  height: height * 0.04,
                ),

                Container(
                  width: width * 1,
                  height: height * 0.055,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(height*0.01),
                      boxShadow: [
                        BoxShadow(color: greyclr, blurRadius: 4, spreadRadius: 2)
                      ]),
                  child: TextFormField(
                    controller: username,
                    cursorColor: textClr,
                    style:
                    TextStyle(color: textClr, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'User Name',

                      hintStyle: TextStyle(
                          color: textboxClr, fontWeight: FontWeight.w200),
                      prefixIcon: Icon(
                        Icons.person_outlined,
                        color: textClr,
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),

                Container(
                  width: width * 1,
                  height: height * 0.055,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(height*0.01),
                      boxShadow: [
                        BoxShadow(color: greyclr, blurRadius: 4, spreadRadius: 2)
                      ]),
                  child: TextFormField(
                    controller: useremail,
                    cursorColor: textboxClr,
                    style: TextStyle(color: textClr, fontWeight: FontWeight.w500),


                    decoration: InputDecoration(
                      hintText: 'Email',
                      enabledBorder: InputBorder.none,
                      hintStyle: TextStyle(
                          color: textboxClr, fontWeight: FontWeight.w200),
                      prefixIcon: Icon(
                        Icons.email,
                        color: textClr,
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ),// Task Description

                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  width: width * 1,
                  height: height * 0.055,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(height*0.01),
                      boxShadow: [
                        BoxShadow(color: greyclr, blurRadius: 4, spreadRadius: 2)
                      ]),
                  child: TextFormField(
                    controller: userphone,
                    cursorColor: textboxClr,
                    style: TextStyle(color: textClr, fontWeight: FontWeight.w500),


                    decoration: InputDecoration(
                      hintText: 'Phone',
                      enabledBorder: InputBorder.none,
                      hintStyle: TextStyle(
                          color: textboxClr, fontWeight: FontWeight.w200),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: textClr,
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ),// Task Description

                SizedBox(
                  height: height * 0.02,
                ),



                  SizedBox(
                  height: height * 0.15,
                ),
                 Align(alignment: Alignment.bottomCenter,
                   child: Container(
                            height: height * 0.05,
                            width: width * 0.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: textClr,
                            ),
                            child: InkWell(
                              onTap: () {
          
                              },
                              //  Navigator.of(context).pushNamed('taskdetails'),
                              child: Center(
                                  child: const Text(
                                'Edit',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                              )),
                            ),
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
