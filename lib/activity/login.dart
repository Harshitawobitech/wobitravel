import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: primarycolors.darkblue,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/bg.png"),
                          fit: BoxFit.fill
                      )
                  ),
                ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textviewstyle(text: "Welcome Back!!!", size: 22, fontweight: FontWeight.bold, textColor: Colors.white,),
                  textviewstyle(text: "Lorum Ipsum", size: 16, textColor: Colors.white, ),
                ],
              ),
            ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)
                      ),
                      color: Colors.white,

                    ),
                    child: Padding(padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textviewstyle(text: "Login", size: 20, textColor: primarycolors.darkblue),
                        SizedBox(
                          height: 10,
                        ),
                        textviewstyle(text: "Email or phone number", size: 14, textColor: Colors.black,),
                        edittextstyle(hintText: "Username", Controller: usernameController,),
                        SizedBox(
                          height: 10,
                        ),
                        textviewstyle(text: "Password", size: 14, textColor: Colors.black,),
                        edittextstyle(hintText: "Password", Controller: passwordController,  ),
                        const SizedBox(
                          height: 30,
                        ),
                        btndecor(text: "Sign in", ontap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MotionTabBarDemo()));
                        }, btncolor: primarycolors.darkblue, textcolor: Colors.white),
                        SizedBox(
                          height: 20,
                        ),
                        btndecor(text: "Guest", ontap: (){
                        }, btncolor: primarycolors.grey, textcolor: primarycolors.darkblue),
                        SizedBox(
                          height: 15,
                        ),
                        RichText(text: TextSpan(
                          text: "Forget Password?",
                          style: TextStyle(
                            color: primarycolors.blue
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = (){
                            print('Forgot password');
                            }
                        )),
                        Expanded(
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: RichText(text: TextSpan(
                                  text: "Don't have an account? ",
                                  style: TextStyle(
                                    color: primarycolors.lightgrey
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Sign Up",
                                        style: TextStyle(
                                            color: primarycolors.darkblue
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            print('Sign up');
                                          }
                                    )
                                  ]
                              )),
                            ),
                        ),

                      ],
                    ),
                    ),
                  ),
                ),
          ])),
    );
  }
}

