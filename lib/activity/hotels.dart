import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/btndecor.dart';
import '../components/edittextstyle.dart';
import '../components/textviewstyle.dart';

class hotels extends StatefulWidget {
   hotels({super.key});

  @override
  State<hotels> createState() => _hotelsState();

}
TextEditingController checkinController = TextEditingController();
TextEditingController checkoutController =  TextEditingController();
TextEditingController roomController =  TextEditingController();
bool TextfieldVisible = false;
bool ButtonVisibility = true;
bool _flag = true;



void toggleTextFieldVisibility() {
  TextfieldVisible = !TextfieldVisible;
  ButtonVisibility = !ButtonVisibility;
}

var blue = Color(0xff32A2FE);
var white = Color(0xffF0EFEF);
var black = Colors.black;

class _hotelsState extends State<hotels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              edittextstyle(hintText: "Check In", Controller: checkinController, iconName: Icons.calendar_month_outlined,),
              edittextstyle(hintText: "Check out", Controller: checkoutController, iconName: Icons.calendar_month_outlined,),
              edittextstyle(hintText: "Room & Guest", Controller: roomController, iconName: Icons.person,),

              const SizedBox(
                height: 20,
              ),
              btndecor(text: "Find", ontap: (){},
                  btncolor: Color(0xff32A2FE),
                  textcolor: Colors.white),
              SizedBox(
                height: 10,
              ),
              textviewstyle(text: "Other Services", size: 16),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Color(0xffF0EFEF),
                    borderRadius: BorderRadius.circular(17)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: [
                            Icon(Icons.flight, color: Colors.black,),
                            Text("Book Flight", style: TextStyle(
                                color: Colors.grey, fontSize: 12
                            ),)
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Icon(Icons.hotel, color: Colors.black,),
                            Text("Flight & Hotel", style: TextStyle(
                                color: Colors.grey, fontSize: 12
                            ),)
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Icon(Icons.circle_outlined, color: Colors.black,),
                            Text("Running Status", style: TextStyle(
                                color: Colors.grey, fontSize: 12
                            ),)
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Icon(Icons.menu_book, color: Colors.black,),
                            Text("Book Hotel", style: TextStyle(
                                color: Colors.grey, fontSize: 12
                            ),)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              textviewstyle(text: "Explore", size: 16),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150.0,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize( // Image radius
                        child:Image.asset("assets/images/dashboard_bg.png",fit: BoxFit.cover),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize( // Image radius
                        child:Image.asset("assets/images/dashboard_bg.png",fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize( // Image radius
                        child:Image.asset("assets/images/dashboard_bg.png",fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(// Image radius
                        child:Image.asset("assets/images/dashboard_bg.png",fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],

                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffF0EFEF),
                    borderRadius: BorderRadius.circular(17)),
                child: Padding(padding: EdgeInsets.all(12),
                child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xff32A2FE),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'OFFER',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFFE7E7E7),
                          ),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Flat 18% off', style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                            Text('Lorem Ipsum'),
                          ]
                      )
                    ]
                ),)
              ),
              SizedBox(
                height: 10,
              ),
              textviewstyle(text: "Offers & Discounts", size: 16),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150.0,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize( // Image radius
                        child:Image.asset("assets/images/dashboard_bg.png",fit: BoxFit.cover),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize( // Image radius
                        child:Image.asset("assets/images/dashboard_bg.png",fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize( // Image radius
                        child:Image.asset("assets/images/dashboard_bg.png",fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(// Image radius
                        child:Image.asset("assets/images/dashboard_bg.png",fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],

                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
