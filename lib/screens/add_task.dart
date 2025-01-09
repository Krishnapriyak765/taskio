import 'package:custom_calender_picker/custom_calender_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskio/functions/imgpicker_camera.dart';
import 'package:taskio/main.dart';
import 'package:taskio/utils/colors.dart';
import 'package:taskio/widgets/button.dart';
import 'package:taskio/widgets/sizedBox.dart';
import 'package:taskio/widgets/text.dart';
import 'package:taskio/widgets/textform_inside.dart';

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
        backgroundColor:  AppColor.appbar,
        title:Texts(text: 'Add Task', fonstsize: height*0.025, fontWeight: FontWeight.w600, color: AppColor.white),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(height * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: height*0.7,
                width: width * 1,
                color: Colors.white10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Divider(),
                    TextformInside(
                      tcontroller: taskName,
                      hintText: 'Task Name',
                      icons: Icon(
                        Icons.email_outlined,
                        color: AppColor.textfieldbordercolor,
                      ),
                    ),
                    SizedBoxs(),
                    TextformInside(
                      tcontroller: taskDescription,
                      hintText: 'Task About',
                      icons: Icon(
                        Icons.assessment_outlined,
                        color: AppColor.textfieldbordercolor,
                      ),
                    ),

                    SizedBoxs(),
                    Container(
                      width: width * 1,
                      height: height * 0.055,
                      decoration: BoxDecoration(
                        color: AppColor.bgdblue,
                        borderRadius: BorderRadius.circular(height * 0.01),
                      ),
                      child: TextFormField(
                        cursorColor: AppColor.textfieldbordercolor,
                        style: TextStyle(
                            color: AppColor.textfieldbordercolor,
                            fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          hintText: 'Assigned date',
                          hintStyle: TextStyle(
                              color: AppColor.textfieldbordercolor,
                              fontWeight: FontWeight.w200),
                          prefixIcon: InkWell(
                            onTap: () async {
                              var result = await showModalBottomSheet(
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10),
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
                                  color: AppColor.textfieldbordercolor,
                                ),
                                SizedBox(
                                  width: width * 0.03,
                                ),
                                Text(
                                  rangeDateTime == null
                                      ? '  Select target date'
                                      : '${rangeDateTime!.start.toString().substring(0, 10)}  ~  ${rangeDateTime!.end.toString().substring(0, 10)}',
                                  style: TextStyle(
                                      color: AppColor.textfieldbordercolor,
                                      fontWeight: FontWeight.w500),
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
                            color: AppColor.bgdblue),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.computer_outlined,
                                color: AppColor.textfieldbordercolor,
                              ),
                              SizedBox(
                                width: width * 0.04,
                              ),
                              Container(
                                height: width * 0.12,
                                width: width * 0.6,
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
                                        color: AppColor.textfieldbordercolor,
                                      )),
                                  value: developer,
                                  dropdownColor: Colors.white,
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  iconDisabledColor: AppColor.greyclr,
                                  items: developers.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: GoogleFonts.outfit(
                                          color: AppColor.textfieldbordercolor,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (var newValue) {
                                    setState(() {
                                      developer = newValue;
                                    });
                                  },
                                  isExpanded: true,
                                ),
                              ),
                            ],
                          ),
                        )),
                    //developer dropdown
                    SizedBox(
                      height: height * 0.02,
                    ),
                    TaskUi, //task UI upload section

                    SizedBox(
                      height: height * 0.02,
                    ),
                    // Buttons(text: 'Submit', onTapto: () {}) // button
                  ],
                ),
              ),
              Buttons(text: 'Submit', onTapto: () {})
            ],
          ),
        ),
      ),
    );
  }
}

Widget TaskUi = Container(
  width: height * 0.46,
  height: height * 0.2,
  decoration: BoxDecoration(
    color: AppColor.bgdblue,
    borderRadius: BorderRadius.circular(height * 0.01),
  ),
  child: Column(
    children: [
      SizedBox(
        height: height * 0.01,
      ),
      Row(
        children: [
          SizedBox(
            width: width * 0.032,
          ),
          Icon(
            Icons.image_outlined,
            color: AppColor.textfieldbordercolor,
          ),
          SizedBox(
            width: width * 0.03,
          ),
          Text(
            'Task UI',
            style: TextStyle(color: AppColor.textfieldbordercolor),
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
      SizedBox(
        height: height * 0.01,
      ),
      Container(
        height: height * 0.14,
        width: width * 1,
        child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                    height: height * 0.12,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * 0.01),
                      color: AppColor.textboxClr,
                    ),
                    child: InkWell(
                        onTap: () {
                          pickGallery();
                        },
                        child: Icon(
                          Icons.add,
                          color: AppColor.white,
                        )),
                  ),
                ],
              );
            }),
      ),
    ],
  ),
);
