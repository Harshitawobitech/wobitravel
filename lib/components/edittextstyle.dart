import 'package:flutter/material.dart';

class edittextstyle extends StatelessWidget {
  String hintText;
  TextEditingController Controller;
  IconData iconName;

  edittextstyle({
    required this.hintText,
    required this.Controller,
    required this.iconName,
});


  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: TextField(
          controller: Controller,
          decoration: InputDecoration(
              icon: new Icon(iconName),
              hintText: hintText,
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none
              )
          )

      ),
    );
  }
}

