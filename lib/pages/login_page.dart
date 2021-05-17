import 'dart:math';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  // Blueprint (Architecture) -> Copy -> 

  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Center(
        child:Text(
          "Login Page",
          style: TextStyle(
            fontSize: 40.0,
            color:Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 2.0,
        ),
      ),
    );
  }
}
