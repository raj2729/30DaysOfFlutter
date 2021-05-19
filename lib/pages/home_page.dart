import 'package:flutter/material.dart';
import 'package:flutter_catalogue/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Scaffold => a lot of built in components
    // Name of components = name of propety

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text('Raj Application',
         ),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to HomePage'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
