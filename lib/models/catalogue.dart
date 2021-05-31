import 'dart:convert';

class CatalogModel {
  // static List<Item> items = [
  //   Item(
  //       id: 1,
  //       name: "Iphone 12 Pro",
  //       description: "Apple Iphone 12th Gen",
  //       price: 40000,
  //       color: "035674",
  //       image: "https://m.media-amazon.com/images/I/71MHTD3uL4L._FMwebp__.jpg")
  // ];
  static List<Item> items;
}

class Item {
  final num id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
    this.id,
    this.name,
    this.description,
    this.price,
    this.color,
    this.image
  );

  // // Constructor to map data
  // // dynamic => can deal with various data types
  // // write logic and initialize final variabes => factory
  // // when variables to be initialised based on some logic
  // // also helps to choose which constructor(eg: dog/cat)
  // factory Item.fromMap(Map<String, dynamic> map) {
  //   // Logic to decode
  //   return Item(
  //       id: map["id"],
  //       name: map["name"],
  //       description: map["description"],
  //       price: map["price"],
  //       color: map["color"],
  //       image: map["image"]
  //   );
  // }

  // // Encode logic => class se map banao
  // // key-value pair
  // toMap() => {
  //     "id": id,
  //     "name": name,
  //     "description": description,
  //     "price":price,
  //     "color": color,
  //     "image": image
  // };
  

  Item copyWith({
    num id,
    String name,
    String description,
    num price,
    String color,
    String image,
  }) {
    return Item(
      id ?? this.id,
      name ?? this.name,
      description ?? this.description,
      price ?? this.price,
      color ?? this.color,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['id'],
      map['name'],
      map['description'],
      map['price'],
      map['color'],
      map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.price == price &&
      other.color == color &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;
  }
}
