import 'package:ecommerse/models/catelog.dart';
import 'package:flutter/material.dart';

class ItemWidge extends StatelessWidget {
  final Item item;
  const ItemWidge({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.blue,
      shape: StadiumBorder(),
      child: ListTile(
        onTap: () {},
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Text(
          "₹ ${item.price}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        // tileColor: Color(int.parse(item.color, radix: 16)),
      ),
    );
  }
}
