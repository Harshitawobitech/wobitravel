import 'package:flutter/material.dart';

class edittextstyle extends StatelessWidget {
  String hintText;
  TextEditingController Controller;

  edittextstyle({
    required this.hintText,
    required this.Controller,
});


  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: TextField(
          controller: Controller,
          decoration: InputDecoration(
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

