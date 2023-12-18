import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/activity/calender.dart';
import 'package:untitled/activity/traveller.dart';
import 'package:untitled/components/clickableedittext.dart';
import 'package:untitled/colors/primarycolors.dart';
import '../components/btndecor.dart';
import '../components/edittextstyle.dart';
import '../components/textviewstyle.dart';

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

String result = "Traveller & Cabin Class";
String resultdate = "Select Date";

void toggleTextFieldVisibility() {
  TextfieldVisible = !TextfieldVisible;
  ButtonVisibility = !ButtonVisibility;
}

var blue = Color(0xff32A2FE);
var white = Color(0xffF0EFEF);
var black = Colors.black;

class _flightsState extends State<flights> {
  _navigateAndDisplaySelection(BuildContext context) async {
    result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const traveller()),
    );
    setState(() {
      result;
    });
  }

  _navigateAndDisplayDate(BuildContext context) async {
    resultdate = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => calender()),
    );
    setState(() {
      resultdate;
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
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
              /* Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => setState(() {
                          _flag = !_flag;
                          toggleTextFieldVisibility();
                        }),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _flag ? primarycolors.blue : white,
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
                          backgroundColor: _flag ? white : primarycolors.blue,
                        ),
                        child: Text(
                          "Round trip",
                          style: TextStyle(
                            color: _flag ? black : white,
                          ),
                        ),
                      ),
                    ],
                  ),*/
            ),
            edittextstyle(
              hintText: "From where",
              Controller: departureController,
            ),
            edittextstyle(
              hintText: "Where To",
              Controller: returnController,
            ),
            clickableedittext(
                hintText: resultdate,
                Controller: departureController,
                iconName: Icons.calendar_month,
                onTap: () {
                  _navigateAndDisplayDate(context);
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> calender()));
                }),
            clickableedittext(
                hintText: result,
                Controller: travellerController,
                iconName: Icons.person,
                onTap: () {
                  _navigateAndDisplaySelection(context);
                }),
            const SizedBox(
              height: 20,
            ),
            btndecor(
                text: "Search",
                ontap: () {},
                btncolor: primarycolors.blue,
                textcolor: Colors.white),
            SizedBox(
              height: 10,
            ),
            textviewstyle(text: "Other Services", size: 16),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
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
                          Icon(
                            Icons.flight,
                            color: Colors.black,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Book \nFlight",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.hotel,
                            color: Colors.black,
                          ),
                          Text(
                            "Flight \n& Hotel",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            "Running \nStatus",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.menu_book,
                            color: Colors.black,
                          ),
                          Text(
                            "Book \nHotel",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
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
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10),
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          color: primarycolors.blue,
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
                          Text(
                            'Flat 18% off',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Lorem Ipsum'),
                        ])
                  ]),
                )),
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
                    child: SizedBox.fromSize(
                      child: Image.network(
                          "https://media.istockphoto.com/id/155439315/photo/passenger-airplane-flying-above-clouds-during-sunset.jpg?s=612x612&w=0&k=20&c=LJWadbs3B-jSGJBVy9s0f8gZMHi2NvWFXa3VJ2lFcL0="),
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
                          "https://www.shutterstock.com/image-photo/passengers-commercial-airplane-flying-above-600nw-1573918030.jpg"),
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
                          "https://media.istockphoto.com/id/155439315/photo/passenger-airplane-flying-above-clouds-during-sunset.jpg?s=612x612&w=0&k=20&c=LJWadbs3B-jSGJBVy9s0f8gZMHi2NvWFXa3VJ2lFcL0="),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Image border
                    child: SizedBox.fromSize(
                      // Image radius
                      child: Image.asset("assets/images/dashboard_bg.png",
                          fit: BoxFit.cover),
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
    ));
  }
}
