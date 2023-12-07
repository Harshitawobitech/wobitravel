import 'package:flutter/material.dart';


class btndecor extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  Color btncolor;
  Color textcolor;

   btndecor({
    required this.text,
    required this.ontap,
     required this.btncolor,
     required this.textcolor,
});

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: btncolor,
            borderRadius: BorderRadius.circular(10.0),
        ),
        child: Align(alignment: Alignment.center,
          child:  Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),),
      ),
    );
  }
}

