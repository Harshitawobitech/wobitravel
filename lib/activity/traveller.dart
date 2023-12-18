import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/colors/primarycolors.dart';
import 'package:untitled/components/btndecor.dart';
import 'package:untitled/components/textviewstyle.dart';

class traveller extends StatefulWidget {
  const traveller({super.key});

  @override
  State<traveller> createState() => _travellerState();
}
String? gender;

class _travellerState extends State<traveller> {
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

  String _groupValue = '';
  void checkRadio(String value ) {
    setState(() {
      _groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: primarycolors.blue,
            elevation: 50.0,
          title: Text("Traveller", style: TextStyle(color: Colors.white),),
        ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /*Text(
              'Adult $itemCount1',
              style: TextStyle(fontSize: 20),
            ),*/


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textviewstyle(text: "Adults", size: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        decrementCount1();
                      },
                    ),
                    textviewstyle(text: '$itemCount1', size: 16),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        incrementCount1();
                      },
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textviewstyle(text: "Children", size: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        decrementCount2();
                      },
                    ),
                    textviewstyle(text: '$itemCount2', size: 16),
                    IconButton(
                      icon: Icon(Icons.add),
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
                textviewstyle(text: "Infants", size: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        decrementCount3();
                      },
                    ),
                    textviewstyle(text: '$itemCount3', size: 16),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        incrementCount3();
                      },
                    ),
                  ],
                ),
              ],

            ),
            SizedBox(height: 20),

            textviewstyle(text: "Class", size: 20, fontweight: FontWeight.bold,),
            Column(
              children: [
                ListTile(
                  title: Text('Economy'),
                  leading: Radio(
                      value: 'Economy',
                      groupValue: _groupValue,
                      onChanged: (value) {
                        checkRadio(value as String);
                      }
                  ),
                ),
                ListTile(
                  title: Text('Premium Economy'),
                  leading: Radio(
                      value: 'Premium Economy',
                      groupValue: _groupValue,
                      onChanged: (value) {
                        checkRadio(value as String);
                      }
                  ),
                ),
                ListTile(
                  title: Text('Business'),
                  leading: Radio(
                      value: 'Business',
                      groupValue: _groupValue,
                      onChanged: (value) {
                        checkRadio(value as String);
                      }
                  ),
                ),

              ],
            ),

            btndecor(text: "Add", ontap: (){
              Navigator.pop(context, "$itemCount1 Adult: , $itemCount2 Children, $itemCount3 Infant, $_groupValue Class");
              print("$itemCount1 Adult, $itemCount2 Children, $itemCount3 Infant, $_groupValue");
            }, btncolor: primarycolors.blue, textcolor: Colors.white),

          ],
        ),
      ),
    ),
    );
  }
}