import 'package:flutter/material.dart';
import 'package:untitled/components/btndecor.dart';
import '../components/edittextstyle.dart';

class dashboard extends StatefulWidget {
  dashboard({Key? key}) : super(key: key);

  @override
  _dashboard createState() => _dashboard();
}

class _dashboard extends State<dashboard> {
  TextEditingController departureController = TextEditingController();
  TextEditingController returnController = TextEditingController();
  TextEditingController travellerController =  TextEditingController();
  TextEditingController classController =  TextEditingController();
  TextEditingController fromCityController =  TextEditingController();
  TextEditingController toCityController =  TextEditingController();
  var blue = Color(0xff32A2FE);
  var white = Color(0xffF0EFEF);
  var black = Colors.black;
  bool _flag = true;
  bool TextfieldVisible = false;
  bool ButtonVisibility = true;

  void toggleTextFieldVisibility() {
    setState(() {
      TextfieldVisible = !TextfieldVisible;
      ButtonVisibility = !ButtonVisibility;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Column(
          children: [
            Image.asset("assets/images/dashboard_bg.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => setState(() {
                      _flag = !_flag;
                      toggleTextFieldVisibility();
                    }),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _flag ? blue : white,
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
                      backgroundColor: _flag ? white : blue,
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
            ),
            Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xffACACAC),
                          blurRadius: 6,
                          offset: Offset(0, 6))
                    ]),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment : MainAxisAlignment.spaceBetween,
                      children: [
                        Text('From', style: TextStyle(
                            color: Color(0xff9a9a9a)
                        ),),
                        Text('To', style: TextStyle(
                            color: Color(0xff9a9a9a)
                        )
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: edittextstyle(hintText: "Amritsar", Controller: fromCityController, iconName: Icons.flight,)
                        ),
                        SizedBox(width: 20.0,),
                        Visibility(
                          child: Flexible(
                            child: edittextstyle(hintText: "Melbourne", Controller: toCityController, iconName: Icons.flight,),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Departure date', style: TextStyle(
                            color: Color(0xff9a9a9a)
                        ),),

                        Text('Return date', style: TextStyle(
                            color: Color(0xff9a9a9a)
                        ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: edittextstyle(hintText: "Fri, 1 Dec", Controller: departureController, iconName: Icons.flight,),
                        ),
                        const SizedBox(width: 20.0,),
                        Visibility(
                          visible: TextfieldVisible,
                          child: Flexible(
                            child: edittextstyle(hintText: "Fri, 15 Dec", Controller: returnController, iconName: Icons.flight,),
                          ),
                        ),
                        Visibility(
                          visible: ButtonVisibility,
                          child: Flexible(
                            child: TextButton(onPressed: (){
                              setState(() {
                              });
                            }, child: Text("Add Return Date")),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Travellers', style: TextStyle(
                            color: Color(0xff9a9a9a)
                        ),),

                        Text('Class', style: TextStyle(
                            color: Color(0xff9a9a9a)
                        ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: edittextstyle(hintText: "2 Adult", Controller: travellerController, iconName: Icons.flight,),
                        ),
                        const SizedBox(width: 20.0,),
                        Flexible(
                          child: edittextstyle(hintText: "Economy", Controller: classController, iconName: Icons.flight,),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    btndecor(text: "Search", ontap: (){},
                        btncolor: Color(0xff32A2FE),
                        textcolor: Colors.white)
                  ],
                )
            ),
          ],
        ),
      )
    );
    }
    }





