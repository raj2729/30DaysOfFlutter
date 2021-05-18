import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Scaffold => a lot of built in components
    // Name of components = name of propety

    return Scaffold(
      appBar: AppBar(
        title: Text('Raj Application',style: TextStyle(color: Colors.white), ),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to HomePage'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
