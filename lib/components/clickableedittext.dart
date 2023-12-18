import 'package:flutter/material.dart';

class clickableedittext extends StatelessWidget {
  String hintText;
  TextEditingController Controller;
  IconData iconName;
  Function() onTap;


  clickableedittext({
    required this.hintText,
    required this.Controller,
    required this.iconName,
    required this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: TextField(
        onTap: onTap,
        readOnly: true,
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

