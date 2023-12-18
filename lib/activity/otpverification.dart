import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/activity/bottombar.dart';
import 'package:untitled/components/textviewstyle.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../components/btndecor.dart';

class otpverification extends StatefulWidget {
  const otpverification({super.key});

  @override
  State<otpverification> createState() => _otpverificationState();
}

class _otpverificationState extends State<otpverification> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: Container(
            width: screenWidth,
            height: screenHeight,
            decoration:  const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffD3E8FF),
                      Color(0xffF8F8F8)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: Padding(padding: EdgeInsets.all(20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              textviewstyle(text: 'Enter the OTP received on registered phone number 9876543212', size: 16,),
              const SizedBox(
                height: 30,
              ),
              OTPTextField(
                  controller: otpController,
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 45,
                  fieldStyle: FieldStyle.box,
                  style: TextStyle(fontSize: 17),
                  onChanged: (pin) {
                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  }),
              const SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: btndecor(
                    text: "Verify",
                    ontap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MotionTabBarDemo()));
                    }, btncolor: Color(0xff32A2FE),  textcolor: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 150.0,
                  height: 50.0,
                  child:
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff32A2FE)
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Resend OTP", style: TextStyle(color: Color(0xff32A2FE)),),
                      ),
                    ),
                  ),
                ),
              ),
            ]),)
          )
      ),
    );
  }
}
