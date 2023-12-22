import 'package:flutter/material.dart';
import 'package:untitled/activity/calender.dart';
import 'package:untitled/activity/flightNavigation.dart';
import 'package:untitled/activity/signUp.dart';
import 'package:untitled/activity/login.dart';
import 'package:untitled/activity/splashscreen.dart';
import 'package:untitled/activity/traveller.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
       fontFamily: GoogleFonts.poppins().fontFamily,
     ),
      //home: MyHomePage(),
     // home: splashscreen(),
      home: MotionTabBarDemo(),
    );
  }
}

