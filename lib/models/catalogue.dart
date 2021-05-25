class CatalogModel{
  static final items = [
    Item(
        id: 01,
        name: "Iphone 12 Pro",
        description: "Apple Iphone 12th Gen",
        price: 40000,
        color: "035674",
        image:
            "https://m.media-amazon.com/images/I/71MHTD3uL4L._FMwebp__.jpg"
    )
  ];

}

class Item {
  final num id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.color,
      this.image});
}

