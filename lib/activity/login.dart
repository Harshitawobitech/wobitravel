import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/activity/bottombar.dart';
import 'package:untitled/activity/signUp.dart';
import 'package:untitled/colors/primarycolors.dart';
import 'package:untitled/components/btndecor.dart';
import 'package:untitled/components/textviewstyle.dart';
import 'package:untitled/components/edittextstyle.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return
      SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/final_logo.png",width: 100, height: 50,fit: BoxFit.cover,),
                      textviewstyle(text: "Log in to your Account", size: 22, fontweight: FontWeight.bold,),
                      textviewstyle(text: "Lorum Ipsum", size: 16, ),
                    ],
                  ),
                ),
                    SizedBox(
                      height: 30,
                    ),
                textviewstyle(text: 'Username', size: 12,),
                edittextstyle(hintText: "Username", Controller: usernameController,),
                    SizedBox(
                      height: 10,
                    ),
                    textviewstyle(text: 'Password', size: 12,),
                edittextstyle(hintText: "Password", Controller: passwordController,  ),
                    const SizedBox(
                      height: 30,
                    ),
                btndecor(text: "LOG IN", ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MotionTabBarDemo()));
                }, btncolor: primarycolors.blue, textcolor: Colors.white),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SizedBox(
                              width: screenWidth,
                              height: 1,
                              child: const DecoratedBox(
                                decoration: BoxDecoration(color: Colors.grey),
                              )),
                        ),
                        const Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "or Login with",
                                style: TextStyle(color: Colors.grey),
                              ),

                            )),
                        Expanded(
                          child: SizedBox(
                              width: screenWidth,
                              height: 1,
                              child: const DecoratedBox(
                                decoration: BoxDecoration(color: Colors.grey),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(

                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Image.asset(
                              'assets/images/facebook.png',
                              width: 40,
                              height: 40,
                            ),
                            ),
                            alignment: Alignment(0, 0),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Image.asset(
                                'assets/images/google.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                            alignment: Alignment(0, 0),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Image.asset(
                                'assets/images/apple.png',
                                width: 40,
                                height: 40,
                              ),),
                            alignment: Alignment(0, 0),
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
/*
SafeArea(
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
edittextstyle(hintText: "+91 India", Controller: countryCode, ),

const SizedBox(
height: 20,
),
textviewstyle( text: 'Phone number', size: 12,),
const SizedBox(
height: 10,
),
edittextstyle(hintText: "987988797984", Controller: phoneNumber,),
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
);*/
