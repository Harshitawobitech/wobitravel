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
          body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffD3E8FF), Color(0xffF8F8F8)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 20, 24, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
            textviewstyle(text: "Hi", size: 26,),
            const SizedBox(
              height: 10,
            ),
            textviewstyle(
              text: 'Create a new Account', size: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textviewstyle(
                        text: "First Name", size: 12,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      edittextstyle(
                          hintText: "abc", Controller: firstnameController, iconName: Icons.flight,),
                      const SizedBox(
                        height: 20,
                      ),
                      textviewstyle(
                        text: 'Last Name', size: 12,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      edittextstyle(
                          hintText: "xyz", Controller: lastnameController, iconName: Icons.flight,),
                      const SizedBox(
                        height: 20,
                      ),
                      textviewstyle(
                        text: 'Email Address', size: 12,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      edittextstyle(
                          hintText: "abc@gmail.com",
                          Controller: emailController, iconName: Icons.flight,),
                      const SizedBox(
                        height: 20,
                      ),
                      textviewstyle(
                        text: 'Password', size: 12,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      edittextstyle(
                          hintText: "abcdef", Controller: passwordController, iconName: Icons.flight,),
                      const SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: btndecor(text: "Continue", ontap: () {}, btncolor: Color(0xff32A2FE),  textcolor: Colors.white,),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                )),
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
                    textviewstyle(text: 'Already have an Account ? ', size: 18,),
                    textviewstyle(text: 'Sign in', size: 18,)
                  ],
                ))
          ]),
        )),
      )),
    );
  }
}
