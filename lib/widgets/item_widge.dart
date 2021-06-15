import 'package:ecommerse/models/catelog.dart';
import 'package:ecommerse/pages/product_detai.dart';
import 'package:ecommerse/widgets/theme.dart';
import 'package:flutter/material.dart';

class ItemWidge extends StatelessWidget {
  final Item item;
  const ItemWidge({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Card(
        color: hexToColor(item.color),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyTheme.primaryLight,
                        fontSize: 100),
                  ),
                  FloatingActionButton(
                    backgroundColor: hexToColor(item.color),
                    onPressed: () {
                      addToLike(id: item.id);
                    },
                    heroTag: null,
                    child: Text("💖", textScaleFactor: 2),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetail(item: item)));
                },
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Hero(
                      tag: Key(item.id.toString()),
                      child: Image.network(
                        item.image,
                        height: 600,
                      ),
                    ),
                  ),
                ),
              ),
              Text("₹ ${item.price}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: MyTheme.primaryLight,
                      fontSize: 50)),
              ElevatedButton(
                onPressed: () {
                  addToCart(id: item.id);
                },
                child: Text(
                  "+  Add to cart",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  addToCart({@required id}) async {
    await Future.delayed(Duration(seconds: 2));

    return;
  }

  addToLike({@required id}) async {
    await Future.delayed(Duration(seconds: 2));

    return;
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}

// shadowColor: Colors.blue,
//       shape: StadiumBorder(),
//       child: ListTile(
//         onTap: () {},
//         leading: Image.network(item.image),
//         title: Text(item.name),
//         subtitle: Text(item.description),
//         trailing: Text(
//           "₹ ${item.price}",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.blue,
//           ),
//         ),
//         // tileColor: Color(int.parse(item.color, radix: 16)),
//       ),
