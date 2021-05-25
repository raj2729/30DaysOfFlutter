import 'package:flutter/material.dart';
import 'package:flutter_catalogue/models/catalogue.dart';
import 'package:flutter_catalogue/widgets/drawer.dart';
import 'package:flutter_catalogue/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

    // Scaffold => a lot of built in components
    // Name of components = name of propety

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Raj Application',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            // index is position i.e start of array
            // return ItemWidget(item: CatalogModel.items[index] ,);
            return ItemWidget(item: dummyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
