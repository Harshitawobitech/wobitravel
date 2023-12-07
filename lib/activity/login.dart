import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/activity/signUp.dart';
import 'package:untitled/components/btndecor.dart';
import 'package:untitled/components/textviewstyle.dart';
import 'package:untitled/components/edittextstyle.dart';

import 'otpverification.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    TextEditingController countryCode = TextEditingController();
    TextEditingController phoneNumber = TextEditingController();
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffD3E8FF), Color(0xffF8F8F8)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            textviewstyle( text: 'WELCOME', size: 26,),
            const SizedBox(
              height: 15,
            ),
           textviewstyle(text: 'Login to your Account', size: 20,),
            const SizedBox(
              height: 50,
            ),
            Stack(children: [
              Container(
                  margin: EdgeInsets.all(24),
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xffACACAC),
                            blurRadius: 6,
                            offset: Offset(0, 6))
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       textviewstyle(text: 'Country Code', size: 12,),
                        const SizedBox(
                          height: 10,
                        ),
                        edittextstyle(hintText: "+91 India", Controller: countryCode, iconName: Icons.flight,),

                        const SizedBox(
                          height: 20,
                        ),
                     textviewstyle( text: 'Phone number', size: 12,),
                        const SizedBox(
                          height: 10,
                        ),
                        edittextstyle(hintText: "987988797984", Controller: phoneNumber, iconName: Icons.flight,),
                        const SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: btndecor(
                              text: "Send OTP",
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            otpverification()));
                              }, btncolor: Color(0xff32A2FE),  textcolor: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/persons.png',
                  width: 60,
                  height: 60,
                ),
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                        width: screenWidth,
                        height: 1,
                        child: const DecoratedBox(
                          decoration: BoxDecoration(color: Colors.black),
                        )),
                  ),
                  const Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "or",
                          style: TextStyle(color: Colors.black),
                        ),

                      )),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                        width: screenWidth,
                        height: 1,
                        child: const DecoratedBox(
                          decoration: BoxDecoration(color: Colors.black),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: textviewstyle(text: 'Login with', size: 20,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Image.asset(
                    'assets/images/facebook.png',
                    width: 30,
                    height: 22.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Image.asset(
                    'assets/images/apple.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Image.asset(
                    'assets/images/google.png',
                    width: 36,
                    height: 36,
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signUp()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textviewstyle(
                             text: "Don't have an Account ? Sign Up", size: 18,),
                      ],
                    ))),
          ]),
        ),
      )),
    );
  }
}
