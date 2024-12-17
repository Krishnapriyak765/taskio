import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:taskio/main.dart';
import 'package:taskio/utils/colors.dart';
import 'package:taskio/widgets/sizedBox.dart';
import 'package:taskio/widgets/text.dart';

class CardHome extends StatelessWidget {
  final String title, subtitle;
  final double percentage;
  final String date;
  const CardHome(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.percentage,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Container(
          width: width * 1,
          height: height * 0.16,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              gradient: LinearGradient(
                  colors: [Color(0xff218086), Color(0xff27528E)])),
          child: Column(
            children: [
              SizedBoxs(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularPercentIndicator(
                    progressColor: AppColor.textfieldbordercolor,
                    radius: 25,
                    lineWidth: 6,
                    animation: true,
                    percent: percentage,
                    center: Text(
                      percentage.toString(),
                      style: GoogleFonts.lato(color: AppColor.white),
                    ),
                  ),
                  Column(
                    children: [
                      Texts(
                          text: title,
                          fonstsize: height * 0.022,
                          fontWeight: FontWeight.bold,
                          color: AppColor.white),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Texts(
                          text: subtitle,
                          fonstsize: height * 0.015,
                          fontWeight: FontWeight.w600,
                          color: AppColor.white),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: height * 0.09,
                      ),
                      Texts(
                          text: date,
                          fonstsize: height * 0.012,
                          fontWeight: FontWeight.bold,
                          color: AppColor.white),
                    ],
                  ),
                ],
              ),
            ],
          ),

          // child: Card(
          //   elevation: 4,
          //   child: Container(
          //     height: 120,
          //     child: ListTile(
          //       trailing: Text('23-01-2024'),
          //       leading: CircularPercentIndicator(
          //         progressColor: AppColor.textfieldbordercolor,
          //         radius: 25,
          //         lineWidth: 6,
          //         animation: true,
          //         percent: percentage,
          //         center: Text(percentage.toString()),
          //       ),
          //       title: Padding(
          //         padding: const EdgeInsets.only(top: 15),
          //         child: Text(
          //           title,
          //         ),
          //       ),
          //       minTileHeight: 120,
          //       subtitle: Padding(
          //         padding: const EdgeInsets.only(top: 16),
          //         child: Text(subtitle),
          //       ),
          //       contentPadding: EdgeInsets.only(right: 15, left: 15),
          //     ),
          //   ),
          // ),
        ));
  }
}
