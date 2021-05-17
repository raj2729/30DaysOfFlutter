import 'dart:math';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  // Blueprint (Architecture) -> Copy -> 

  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,// So that image background is properly white
      child:Column(children: 
      [
        Image.asset("assets/images/login_image.png"),
        Text(
          "Login Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )
      ],)
    );
  }
}
