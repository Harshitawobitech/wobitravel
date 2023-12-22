import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/activity/calender.dart';
import 'package:untitled/activity/traveller.dart';
import 'package:untitled/components/clickableedittext.dart';
import 'package:untitled/colors/primarycolors.dart';
import 'package:untitled/components/horizontaldashedline.dart';
import 'package:untitled/components/verticaldashedline.dart';
import 'package:untitled/provider/travelupdate.dart';
import '../components/btndecor.dart';
import '../components/edittextstyle.dart';
import '../components/textviewstyle.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

import 'package:provider/provider.dart';


class flights extends StatefulWidget {
  const flights({super.key});

  @override
  State<flights> createState() => _flightsState();
}

TextEditingController departureController = TextEditingController();
TextEditingController returnController = TextEditingController();
TextEditingController travellerController = TextEditingController();
TextEditingController classController = TextEditingController();
TextEditingController fromCityController = TextEditingController();
TextEditingController toCityController = TextEditingController();
bool TextfieldVisible = false;
bool ButtonVisibility = true;
bool _flag = true;

String resultPassenger = "Select Passenger";
String resultDate = "Select Date";
String resultClass = "Select class";

void toggleTextFieldVisibility() {
  TextfieldVisible = !TextfieldVisible;
  ButtonVisibility = !ButtonVisibility;
}

var blue = Color(0xff32A2FE);
var white = Color(0xffF0EFEF);
var black = Colors.black;
int itemCount1 = 0;
int itemCount2 = 0;
int itemCount3 = 0;

int _selectedValue = 0;

class _flightsState extends State<flights> {
  _navigateAndDisplaySelection(BuildContext context) async {
    resultPassenger = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const traveller()),
    );
    setState(() {
      resultPassenger;
    });
  }

  int itemCount1 = 0;
  int itemCount2 = 0;
  int itemCount3 = 0;

  void incrementCount1() {
    setState(() {
      itemCount1++;
    });
  }

  void decrementCount1() {
    setState(() {
      if (itemCount1 > 0) {
        itemCount1--;
      }
    });
  }

  void incrementCount2() {
    setState(() {
      itemCount2++;
    });
  }

  void decrementCount2() {
    setState(() {
      if (itemCount2 > 0) {
        itemCount2--;
      }
    });
  }

  void incrementCount3() {
    setState(() {
      itemCount3++;
    });
  }

  void decrementCount3() {
    setState(() {
      if (itemCount3 > 0) {
        itemCount3--;
      }
    });
  }

  _navigateAndDisplayDate(BuildContext context) async {
    resultDate = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => calender()),
    );
    setState(() {
      resultDate;
    });
  }

  String _groupValue = '';
  void checkRadio(String value) {
    setState(() {
      _groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
              ),
              color: Colors.transparent,

            ),
            child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
            Padding(
              padding:  EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                            value: 'One way',
                            groupValue: _groupValue,
                            onChanged: (value) {
                              checkRadio(value as String);
                            }),
                        Text("One way"),
                        SizedBox(
                          width: 20,
                        ),
                        Radio(
                            value: 'Round trip',
                            groupValue: _groupValue,
                            onChanged: (value) {
                              checkRadio(value as String);
                            }),
                        Text("Round trip"),
                      ],
                    ),
                  ),*/
                   Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () => setState(() {
                                _flag = !_flag;
                                toggleTextFieldVisibility();
                              }),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _flag ? primarycolors.darkblue : Colors.white,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                  side:  BorderSide(
                                      width: 1,
                                      color: primarycolors.lightgrey
                                  )
                              ),
                              child: Text(
                                "One way",
                                style: TextStyle(color: _flag ? Colors.white : black),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                              onPressed: () => setState(() {
                                _flag = !_flag;
                                toggleTextFieldVisibility();
                              }),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _flag ? Colors.white : primarycolors.darkblue,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                  side:  BorderSide(
                                      width: 1,
                                      color: primarycolors.lightgrey
                                  )
                              ),
                              child: Text(
                                "Round trip",
                                style: TextStyle(
                                  color: _flag ? black : white,
                                ),
                              ),
                            ),
                          ],
                        ),

                  Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                          Icon(Icons.abc),
                           // Expanded(child: DashLineView(direction: Axis.vertical,)),

                            Icon(Icons.abc)
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textviewstyle(text: "From", size: 16, textColor: primarycolors.txtcolor),
                                edittextstyle(hintText: "Location", Controller: departureController),
                                SizedBox(
                                  height: 10,
                                ),
                                DashLineView(),
                                SizedBox(
                                  height: 10,
                                ),
                                textviewstyle(text: "To", size: 16, textColor: primarycolors.txtcolor),
                                edittextstyle(hintText: "Location", Controller: departureController),
                              ],
                            ),
                          ),
                        ),

                        Row(
                          children: [

                            Icon(Icons.swap_vert_circle, color: primarycolors.darkblue,),
                          ],
                        )
                      ],
                    ),
                  ),
                  /*Row(
                    children: [
                      textviewstyle(text: "From", size: 16, textColor: primarycolors.txtcolor),
                      edittextstyle(
                        hintText: "From where",
                        Controller: departureController,
                      ),
                      textviewstyle(text: "To", size: 16, textColor: primarycolors.txtcolor),
                      edittextstyle(
                        hintText: "Where To",
                        Controller: returnController,
                      ),
                    ],
                  ),*/
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textviewstyle(text: "Depart", size: 16, textColor: primarycolors.txtcolor),
                            clickableedittext(
                                hintText: resultDate,
                                Controller: departureController,
                                iconName: Icons.calendar_month,
                                onTap: () {
                                  _navigateAndDisplayDate(context);
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> calender()));
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textviewstyle(text: "Return", size: 16, textColor: primarycolors.txtcolor),
                            clickableedittext(
                                hintText: resultDate,
                                Controller: departureController,
                                iconName: Icons.calendar_month,
                                onTap: () {
                                  _navigateAndDisplayDate(context);
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> calender()));
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  textviewstyle(text: "Passenger", size: 16, textColor: primarycolors.txtcolor),
                  clickableedittext(
                      hintText: resultPassenger,
                      Controller: travellerController,
                      iconName: Icons.person,
                      onTap: () {
                        //_navigateAndDisplaySelection(context);
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(builder: (BuildContext context, StateSetter setState){
                              return Container(
                                  width: double.infinity,
                                  child: Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        textviewstyle(text: "Choose Travellers", size: 20, textColor: primarycolors.darkblue, fontweight: FontWeight.bold,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            //  textviewstyle(text: "Adults", size: 16, textColor: Colors.black),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                textviewstyle(text: "Adult", size: 16, textColor: Colors.black, fontweight: FontWeight.bold,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    IconButton(
                                                      icon: Icon(Icons.remove_circle, color: primarycolors.darkblue,),
                                                      onPressed: () {
                                                      },
                                                    ),
                                                    textviewstyle(text: '$itemCount1', size: 16, textColor: Colors.black),
                                                    IconButton(
                                                      icon: Icon(Icons.add_circle_outlined, color: primarycolors.darkblue,),
                                                      onPressed: () {
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                textviewstyle(text: "Children", size: 16, textColor: Colors.black,fontweight: FontWeight.bold),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    IconButton(
                                                      icon: Icon(Icons.remove_circle, color: primarycolors.darkblue,),
                                                      onPressed: () {
                                                        decrementCount2();
                                                      },
                                                    ),
                                                    textviewstyle(text: '$itemCount2', size: 16, textColor: Colors.black),
                                                    IconButton(
                                                      icon: Icon(Icons.add_circle_outlined, color: primarycolors.darkblue,),
                                                      onPressed: () {
                                                        incrementCount2();
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                textviewstyle(text: "Infants", size: 16, textColor: Colors.black,fontweight: FontWeight.bold),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    IconButton(
                                                      icon: Icon(Icons.remove_circle, color: primarycolors.darkblue,),
                                                      onPressed: () {
                                                        decrementCount3();
                                                      },
                                                    ),
                                                    textviewstyle(text: '$itemCount3', size: 16, textColor: Colors.black),
                                                    IconButton(
                                                      icon: Icon(Icons.add_circle_outlined, color: primarycolors.darkblue,),
                                                      onPressed: () {
                                                        incrementCount3();
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        btndecor(text: "Done", ontap: (){}, btncolor: primarycolors.darkblue, textcolor: Colors.white)
                                        // _navigateAndDisplaySelection(context)
                                      ],
                                    ),)
                              );
                            });
                          },
                        );
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  textviewstyle(text: "Class", size: 16, textColor: primarycolors.txtcolor),
                  clickableedittext(
                      hintText: resultClass,
                      Controller: travellerController,
                      iconName: Icons.person,
                      onTap: () {
                        //_navigateAndDisplaySelection(context);
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              width: double.infinity,
                              child: Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  textviewstyle(text: "Choose Traveller", size: 20, textColor: primarycolors.darkblue),
                                  Column(
                                    children: [
                                      CheckboxListTile(
                                        title: Text('Economy'),
                                        value: _selectedValue == 1,
                                        onChanged: (value) {
                                          setState(() {
                                            if (value!) {
                                              _selectedValue = 1;
                                            }
                                          });
                                        },
                                      ),
                                      CheckboxListTile(
                                        title: Text('Business'),
                                        value: _selectedValue == 2,
                                        onChanged: (value) {
                                          setState(() {
                                            if (value!) {
                                              _selectedValue = 2;
                                            }
                                          });
                                        },
                                      ),
                                      CheckboxListTile(
                                        title: Text('First class'),
                                        value: _selectedValue == 3,
                                        onChanged: (value) {
                                          setState(() {
                                            if (value!) {
                                              _selectedValue = 3;
                                            }
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  btndecor(text: "Done", ontap: (){}, btncolor: primarycolors.darkblue, textcolor: Colors.white)
                                 // _navigateAndDisplaySelection(context)
                                ],
                              ),)
                            );
                          },
                        );
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  btndecor(
                      text: "Search Flights",
                      ontap: () {},
                      btncolor: primarycolors.darkblue,
                      textcolor: Colors.white),
                  SizedBox(
                    height: 10,
                  ),
                  textviewstyle(text: "Deals", size: 16, textColor: primarycolors.darkblue,),
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
                          child: SizedBox.fromSize(
                            // Image radius
                            //child:Image.asset("assets/images/dashboard_bg.png",fit: BoxFit.cover),
                            child: Image.network(
                                "https://images.pexels.com/photos/3278215/pexels-photo-3278215.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            // Image radius
                            child: Image.network(
                                "https://images.pexels.com/photos/895254/pexels-photo-895254.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            // Image radius
                            child: Image.network(
                                "https://images.pexels.com/photos/3278215/pexels-photo-3278215.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            // Image radius
                            child: Image.network(
                                "https://images.pexels.com/photos/3278215/pexels-photo-3278215.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
                  ],
                ),
          )),
    );
  }
}
