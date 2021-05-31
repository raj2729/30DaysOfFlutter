import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// To decode json files
import 'dart:convert';
import 'package:flutter_catalogue/models/catalogue.dart';
import 'package:flutter_catalogue/widgets/drawer.dart';
import 'package:flutter_catalogue/widgets/item_widget.dart';

// Stateless => no changes
// While importing data => we need to change data
// => Stateful
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    // final catalogJson =
    //     await rootBundle.loadString("assets/files/catalog.json");
    // print(catalogJson);
    //  To decode dtaa of json
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
    // var decodedData = jsonDecode("assets/files/catalog.json");
    // // Gives entire json, we want only
    // var products = decodedData["products"];

    // CatalogModel.items =
    //     List.from(products).map((item) => Item.fromMap(item)).toList();
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(4, (index) => CatalogModel.items[0]);

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
        child: (CatalogModel.items !=null && CatalogModel.items.isNotEmpty) ? ListView.builder(
          // itemCount: CatalogModel.items.length,
          // itemCount: dummyList.length,
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            // index is position i.e start of array
            // return ItemWidget(item: CatalogModel.items[index] ,);
            // return ItemWidget(item: dummyList[index]);
            return ItemWidget(item: CatalogModel.items[index]);
          },
        ) : 
        Center(
          child: CircularProgressIndicator(),
        ) ,
        
      ),
      drawer: MyDrawer(),
    );
  }
}
