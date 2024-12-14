import 'package:flutter/material.dart';

import '../main.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  TextEditingController username = TextEditingController();
  TextEditingController useremail = TextEditingController();
  TextEditingController userphone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        backgroundColor: textClr,
        title: Text('Profile'),
      ),
      body: Padding(
        padding:  EdgeInsets.all(height*0.03),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: greyclr,
              radius: height * 0.1,
              backgroundImage: AssetImage('assets/girl.jpg'),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              child: Text('User Name'.toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: height * 0.03)),
            ),
            Container(
              child: Text('FLUTTER DEVELOPER',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: height * 0.012)),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.055,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: greyclr, blurRadius: 4, spreadRadius: 2)
                  ]),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Icon(
                    Icons.person,
                    color: greyclr,
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text(
                    'Profile Edit',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: height * 0.02,color: textClr),
                  ),
                  SizedBox(
                    width: width * 0.4,
                  ),
                   InkWell(
                    onTap: () => Navigator.of(context).pushNamed('profileEdit'),
                     child: Icon(
                      Icons.arrow_forward_ios_rounded,
                       color: textboxClr,
                                       ),
                   ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.055,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: greyclr, blurRadius: 4, spreadRadius: 2)
                  ]),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Icon(
                    Icons.person,
                    color: greyclr,
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text(
                    'Task Assigned',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: height * 0.02,color: textClr),
                  ),
                  SizedBox(
                    width: width * 0.35,
                  ),
                   InkWell(
                    onTap: () => Navigator.of(context).pushNamed('profileEdit'),
                     child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: textboxClr,
                                       ),
                   ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.22,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.05,
                width: width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: textClr,
                ),
                child: InkWell(
                  onTap: () {},
                  //  Navigator.of(context).pushNamed('taskdetails'),
                  child: Center(
                      child: const Text(
                    'Logout',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
