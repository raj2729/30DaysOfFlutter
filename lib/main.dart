import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Constructor
  const MyApp({Key key}) : super(key: key);

  //All UI work here in build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
            child: Center(
                child:
                    Container(child: Text('Welcome to 30 days of flutter')))));
  }
}
