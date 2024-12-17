import 'package:custom_calender_picker/custom_calender_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskio/main.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController taskName = TextEditingController();
  TextEditingController taskDescription = TextEditingController();
  TextEditingController taskAgnTo = TextEditingController();
  TextEditingController taskAgnFrom = TextEditingController();
  // TextEditingController date = TextEditingController();

  // final dropDownKey = GlobalKey<DropdownSearchState>();
  var developer;
  List<String> developers = <String>[
    'Rohith',
    'SreeLakshmi',
    'Jithin',
    'Gaury',
    'Arun',
    'Krishnapriya'
  ];

  List<DateTime> eachDateTime = [];
  DateTimeRange? rangeDateTime;

  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    String dropdownValue = developers.last;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: textClr,
        title: Text('Add Task '),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(height * 0.04),
          child: Container(
            height: height * 1,
            width: width * 1,
            color: Colors.white10,
            child: Column(
              children: [
                // Divider(),
                Container(
                  width: width * 1,
                  height: height * 0.055,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(height * 0.01),
                      boxShadow: [
                        BoxShadow(
                            color: greyclr, blurRadius: 4, spreadRadius: 2)
                      ]),
                  child: TextFormField(
                    controller: taskName,
                    cursorColor: textClr,
                    style:
                        TextStyle(color: textClr, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Task Name',
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
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(height * 0.01),
                      boxShadow: [
                        BoxShadow(
                            color: greyclr, blurRadius: 4, spreadRadius: 2)
                      ]),
                  child: TextFormField(
                    controller: taskDescription,
                    cursorColor: textboxClr,
                    style:
                        TextStyle(color: textClr, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      hintText: 'Task About',
                      enabledBorder: InputBorder.none,
                      hintStyle: TextStyle(
                          color: textboxClr, fontWeight: FontWeight.w200),
                      prefixIcon: Icon(
                        Icons.assessment_outlined,
                        color: textClr,
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                ), // Task Description

                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  width: width * 1,
                  height: height * 0.055,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(height * 0.01),
                      boxShadow: [
                        BoxShadow(
                            color: greyclr, blurRadius: 4, spreadRadius: 2)
                      ]),
                  child: TextFormField(
                    cursorColor: textboxClr,
                    style: TextStyle(
                        color: textboxClr, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      hintText: 'Target date',
                      hintStyle: TextStyle(
                          color: textboxClr, fontWeight: FontWeight.w200),
                      prefixIcon: InkWell(
                        onTap: () async {
                          var result = await showModalBottomSheet(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                                bottom: Radius.zero,
                              ),
                            ),
                            context: context,
                            builder: (context) => CustomCalenderPicker(
                              returnDateType: ReturnDateType.range,
                              initialDateRange: rangeDateTime,
                              calenderThema: CalenderThema.dark,
                              rangeColor: Colors.grey.withOpacity(.3),
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(20),
                                bottom: Radius.zero,
                              ),
                            ),
                          );
                          if (result != null) {
                            if (result is DateTimeRange) {
                              setState(() {
                                rangeDateTime = result;
                              });
                            }
                          }
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Icon(
                              Icons.calendar_month_outlined,
                              color: textClr,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              rangeDateTime == null
                                  ? '  Select target date'
                                  : '${rangeDateTime!.start.toString().substring(0, 10)}  ~  ${rangeDateTime!.end.toString().substring(0, 10)}',
                              style: TextStyle(
                                  color: textClr, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        //
                      ),
                    ),
                  ),
                ), //Task date from to To
                SizedBox(
                  height: height * 0.02,
                ),

                Container(
                    height: width * 0.12,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffF6F6FF)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: DropdownButton(
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        underline: Container(),
                        hint: Text('Assigned to',
                            style: GoogleFonts.outfit(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff615F5F),
                            )),
                        value: developer,
                        dropdownColor: Colors.white,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                          size: 20,
                        ),
                        iconDisabledColor: const Color(0xff615F5F),
                        items: developers.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: GoogleFonts.outfit(
                                color: const Color(0xff615F5F),
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (var newValue) {
                          print(developer);
                          setState(() {
                            developer = newValue;
                            print(developer);
                          });
                        },
                        isExpanded: true,
                      ),
                    )),
                Container(
                  width: width * 1,
                  height: height * 0.055,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(height * 0.01),
                      boxShadow: [
                        BoxShadow(
                            color: greyclr, blurRadius: 4, spreadRadius: 2)
                      ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.035,
                      ),
                      Icon(
                        Icons.developer_board,
                        color: textClr,
                      ),
                      SizedBox(
                        width: width * 0.12,
                      ),
                      DropdownButton<String>(
                        hint: Text('Assigned to'),
                        value: dropdownValue,
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: textClr,
                        ),
                        elevation: 1,
                        style: TextStyle(
                            color: textClr, fontWeight: FontWeight.w600),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items: developers
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ), //developer dropdown
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  width: width * 1,
                  height: height * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(height * 0.01),
                      boxShadow: [
                        BoxShadow(
                            color: greyclr, blurRadius: 4, spreadRadius: 2)
                      ]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.032,
                          ),
                          Icon(
                            Icons.image_outlined,
                            color: textClr,
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            'Task UI',
                            style: TextStyle(color: textboxClr),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: height * 0.14,
                        width: width * 1,
                        child: Expanded(
                          child: ListView.builder(
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, index) {
                                return Row(
                                  children: [
                                    SizedBox(
                                      width: width * 0.03,
                                    ),
                                    Container(
                                      height: height * 0.14,
                                      width: width * 0.2,
                                      color: greyclr,
                                      child: InkWell(
                                          onTap: () {},
                                          child: Icon(
                                            Icons.add,
                                            color: textClr,
                                          )),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ), //task UI upload section

                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
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
                            child: Text(
                          'Submit',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ), // button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
