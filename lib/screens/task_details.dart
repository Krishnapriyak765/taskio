import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:taskio/main.dart';

class taskdetails extends StatefulWidget {
  const taskdetails({super.key});

  @override
  State<taskdetails> createState() => _taskdetailsState();
}

class _taskdetailsState extends State<taskdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Details'),
      ),
      body: SafeArea(child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              SizedBox(height: 30,),
               CarouselSlider(
                options: CarouselOptions(
                height: 200.0,
                aspectRatio: 10/9,
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
                color:textClr,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 154, 152, 152),
                    blurRadius: 10
                  )
                ]
                ),
                child: Image.asset(item, fit: BoxFit.cover,width: 50,height: 30,),
                );
                    },
              );
          }).toList(),
          ),
          SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('PROJECT NAME',style: TextStyle(
                        fontSize:25,color: textClr,letterSpacing: 2
                      ),),
                      Row(
                        children: [
                          Text('Priority : ',style: TextStyle(color: textClr),),
                          Text('High',style: TextStyle(color: textClr),)
                        ],
                      )
                    ],
                  ),
                  Text('date',style: TextStyle(
                    fontSize:17,color: textClr,letterSpacing: 3
                  ),)
                ],
              ),
                SizedBox(height: 20,),
              Text('Lorem Ipsum Deceit Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.',
              style: TextStyle(letterSpacing: 1),),
              SizedBox(height: 20,),
              Divider(thickness: 1,)
         
            ],
          ),
        )
      )),
    );
  }
}
