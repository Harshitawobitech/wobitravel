import 'package:flutter/material.dart';


class textviewstyle extends StatelessWidget {
  String text;
  double size;
  FontWeight? fontweight;
  Color textColor;

  textviewstyle({
    required this.text,
    required this.size,
    this.fontweight,
    required this.textColor,
});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
       // color: Color(0xff32A2FE),
        color: textColor,
        fontSize: size,
        fontWeight: fontweight,
      ),
    );
  }
}

