import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catalogue/models/catalogue.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  // Assert so that item passed is not null

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 0,
      child: ListTile(
        onTap: () {
          print("${item.name}");
        },
        leading: Image.network(
          item.image,
        ),
        title: Text("Iphone 12 Max Pro"),
        subtitle: Text(item.description),
        trailing: Text(
          "\$ ${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
