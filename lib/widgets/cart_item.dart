import 'package:ecommerse/models/catelog.dart';
import 'package:flutter/material.dart';

class AllCartItem extends StatelessWidget {
  final Cart item;
  const AllCartItem({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: hexToColor(item.color),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.network(
                  item.image,
                  height: 50,
                  width: 50,
                ),
                Text(
                  item.name,
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    "assets/images/delete.png",
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}

class Cart {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Cart(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      id: map["id"],
      name: map["name"],
      description: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": description,
        "price": price,
        "color": color,
        "image": image,
      };
}

class CartProduct {
  static List<Cart> products = [];
}
