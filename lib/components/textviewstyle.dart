import 'package:flutter/material.dart';


class textviewstyle extends StatelessWidget {
  String text;
  double size;

  textviewstyle({
    required this.text,
    required this.size
});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
       // color: Color(0xff32A2FE),
        color: Colors.black,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
