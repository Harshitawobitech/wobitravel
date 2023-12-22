import 'package:flutter/material.dart';
import 'package:untitled/activity/login.dart';
import 'package:untitled/components/edittextstyle.dart';
import 'package:untitled/components/textviewstyle.dart';
import '../components/btndecor.dart';

class signUp extends StatefulWidget {
  @override
  State<signUp> createState() => _signUp();
}

class _signUp extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    TextEditingController firstnameController = TextEditingController();
    TextEditingController lastnameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset("assets/images/final_logo.png",width: 100, height: 50,fit: BoxFit.cover,),
                        textviewstyle(text: "Sign up your Account", size: 22, fontweight: FontWeight.bold, textColor: Colors.black,),
                        textviewstyle(text: "Lorum Ipsum", size: 16, textColor: Colors.black, ),
                      ],
                    ),
                  ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textviewstyle(
                    text: "Name", size: 12, textColor: Colors.black,
                  ),
                  edittextstyle(
                      hintText: "Name", Controller: firstnameController, ),
                  const SizedBox(
                    height: 10,
                  ),

                  textviewstyle(
                    text: 'Email Address', size: 12, textColor: Colors.black,
                  ),

                  edittextstyle(
                      hintText: "abc@gmail.com",
                      Controller: emailController,),
                  const SizedBox(
                    height: 10,
                  ),
                  textviewstyle(
                    text: 'Mobile', size: 12, textColor: Colors.black,
                  ),

                  edittextstyle(
                    hintText: "mobile",
                    Controller: emailController,),
                  const SizedBox(
                    height: 10,
                  ),
                  textviewstyle(
                    text: 'Country', size: 12, textColor: Colors.black,
                  ),

                  edittextstyle(
                    hintText: "Country",
                    Controller: emailController,),
                  const SizedBox(
                    height: 10,
                  ),
                  textviewstyle(
                    text: 'City', size: 12, textColor: Colors.black,
                  ),
                  edittextstyle(
                      hintText: "city", Controller: passwordController,),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: btndecor(text: "Sign Up", ontap: () {}, btncolor: Color(0xff32A2FE),  textcolor: Colors.white,),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textviewstyle(text: 'Already have an Account ? ', size: 18, textColor: Colors.black,),
                      textviewstyle(text: 'Sign in', size: 18, textColor: Colors.black,)
                    ],
                  ))
            ]),
          ))),
    );
  }
}
