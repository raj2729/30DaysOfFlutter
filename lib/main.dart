import 'package:flutter/material.dart';
import 'package:flutter_catalogue/pages/home_page.dart';
import 'package:flutter_catalogue/pages/login_page.dart';
import 'package:flutter_catalogue/utils/routes.dart';
import 'package:flutter_catalogue/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Constructor
  const MyApp({Key key}) : super(key: key);

  //All UI work here in build
  @override
  // BuildContext used to build tree of widgets
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

    // If a widget carries 1 children then use child or else children

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      theme: MyTheme.lightTheme(context) ,
      themeMode: ThemeMode.dark,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute:MyRoutes.homeRoute,
      routes: {
        // Do not add this when home specified
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );

    // To specify default valu, we put in curly braces
    // To specify required parameters
    // bring({int rupees = 50 , @required bool bag})
    // {

    // }
  }
}
