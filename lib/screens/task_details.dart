import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:taskio/main.dart';
import 'package:taskio/utils/colors.dart';
import 'package:taskio/widgets/sizedBox.dart';
import 'package:taskio/widgets/text.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({super.key});

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Texts(
              text: 'Task Details',
              fonstsize: height * 0.025,
              fontWeight: FontWeight.w500,
              color: AppColor.white),
          backgroundColor: AppColor.textfieldbordercolor),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                aspectRatio: 10 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                "assets/logo.png",
                "assets/logo.png",
                "assets/logo.png",
                "assets/logo.png",
                "assets/logo.png",
                "assets/logo.png"
              ].map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 0.0),
                      decoration: BoxDecoration(
                          color: AppColor.textfieldbordercolor,
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 154, 152, 152),
                                blurRadius: 10)
                          ]),
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: width * 0.9,
                        height: height * 0.2,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Texts(
                        text: 'PROJECT NAME',
                        fonstsize: height * 0.03,
                        fontWeight: FontWeight.bold,
                        color: AppColor.textfieldbordercolor),
                    Row(
                      children: [
                        Texts(
                            text: 'Proirity   |',
                            fonstsize: height * 0.015,
                            fontWeight: FontWeight.w500,
                            color: AppColor.textfieldbordercolor),
                        Texts(
                            text: '   HIGH',
                            fonstsize: height * 0.015,
                            fontWeight: FontWeight.w500,
                            color: AppColor.textfieldbordercolor),
                      ],
                    )
                  ],
                ),
                SizedBoxs(),
                CircularPercentIndicator(
                    progressColor: AppColor.textfieldbordercolor,
                    radius: height * 0.03,
                    lineWidth: 6,
                    animation: true,
                    percent: 0.6,
                    center: Text(
                      '0.7',
                      style: GoogleFonts.lato(
                          color: AppColor.textfieldbordercolor),
                    )),
              ],
            ),

            SizedBoxs(),

            Card(color: AppColor.greyclr,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 12,right: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                     Texts(
                      text: 'Task About',
                      fonstsize: height * 0.015,
                      fontWeight: FontWeight.w500, color: AppColor.greyclr,
                      ),
                    Container(
                      height: height * 0.2,
                      width: width * 1,
                      child: const Text(
                        'Lorem Ipsum Deceit Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, adipisci velit. Neque porro quisquam est qui dolorem ipsum quia sit amet, consectetur, adipisci velit.',
                        textAlign: TextAlign.left,
                        style: TextStyle(letterSpacing: 1),
                      ),
                    ),
                    RichText(
                        text: TextSpan(
                            children: [
                          TextSpan(
                              text: '  Date :  ',
                              style:
                                  GoogleFonts.ptSans(color: AppColor.greyclr)),
                          const TextSpan(text: '24-11-2024'),
                          const TextSpan(text: '  -  '),
                          const TextSpan(text: '24-04-2024')
                        ],
                            style: GoogleFonts.ptSans(
                                fontSize: height * 0.015,
                                fontWeight: FontWeight.w500,
                                color: AppColor.black))),
                    SizedBox(
                      height: height * 0.05,
                    ),
                  ],
                ),
              ),
            ),
            SizedBoxs()
            //  Divider(thickness: 1,)
          ],
        ),
      )),
    );
  }
}
