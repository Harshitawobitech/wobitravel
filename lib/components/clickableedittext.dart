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
    return TextField(
        onTap: onTap,
        readOnly: true,
          controller: Controller,
          decoration: InputDecoration(
              prefixIcon: IconButton(onPressed: (){}, icon: Icon(iconName)),
              hintText: hintText,
          )


    );
  }
}

