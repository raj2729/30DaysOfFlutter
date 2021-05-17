import 'package:flutter/material.dart';
import 'package:flutter_catalogue/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Constructor
  const MyApp({Key key}) : super(key: key);

  //All UI work here in build
  @override
  Widget build(BuildContext context) {
    int days = 30;
    double days_double = 30;
    String s = "301";
    // Curly braces only when more thaan 1 word
    bool state = true;
    // For any number(int/double)
    num number = 10;

    // Any data type
    var day = "Tuesday";
    const pi = 3.14;
    // Can be used when elements can be modified
    final temp = ["Hello", "World"];

    return MaterialApp(
      home: HomePage(),
    );
  }
}
