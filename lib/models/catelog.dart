class Item {
  final String id;
  final String name;
  final String descrition;
  final int price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.descrition,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(id: "", name: "", descrition: "", price: 0, color: "", image: ""),
];
