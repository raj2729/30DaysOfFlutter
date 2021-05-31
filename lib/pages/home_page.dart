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
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ?
            // ListView.builder(
            //   // itemCount: CatalogModel.items.length,
            //   // itemCount: dummyList.length,
            //   itemCount: CatalogModel.items.length,
            //   itemBuilder: (context, index) {
            //     // index is position i.e start of array
            //     // return ItemWidget(item: CatalogModel.items[index] ,);
            //     // return ItemWidget(item: dummyList[index]);
            //     return ItemWidget(item: CatalogModel.items[index]);
            //   },
            // ) :
            GridView.builder(
                // gridDelegate uses Sliver
                // Sliver => anything that scrolls has sliver(Scrollable Content)
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // 2 items in 1 row
                  crossAxisCount: 2,
                  // For spacing btwn header child and footer
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 14,

                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    // shadowColor: Colors.black,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  // name in header and image in child
                  // header: : ,
                    child:
                    GridTile(
                      header: Container(
                        child: Text(item.name , style: TextStyle(color: Colors.white),),
                        padding:EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,


                        ),
                      ),
                      child: Image.network(item.image),
                      // footer: Text(item.price.toString()),
                      footer:Container(
                        child: Text(item.price.toString() , style: TextStyle(color: Colors.white),),
                        padding:EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black,


                        ),
                      ),
                    )

                  );
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
