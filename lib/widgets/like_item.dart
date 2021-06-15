import 'package:flutter/material.dart';

class AllLikeItem extends StatelessWidget {
  final Like item;
  const AllLikeItem({Key? key, required this.item})
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
            child: Column(
              children: [
                Image.network(
                  item.image,
                  height: 500,
                  width: 500,
                ),
                Text(
                  item.name,
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 100),
                ),
                Text(
                  item.price.toString(),
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 50),
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

class Like {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Like(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});

  factory Like.fromMap(Map<String, dynamic> map) {
    return Like(
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

class LikeProduct {
  static List<Like> products = [];
}
