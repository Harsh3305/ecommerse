import 'package:ecommerse/models/catelog.dart';
import 'package:ecommerse/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetail extends StatelessWidget {
  final Item item;

  // const ProductDetail({Key? key, @required this.item}) : super(key: key);

  const ProductDetail({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset("assets/images/back-arrow.png"),
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Card(
              color: hexToColor(item.color),
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    children: [
                      Hero(
                          tag: Key(item.id.toString()),
                          child: Image.network(item.image)),
                      Text(
                        item.name,
                        style: TextStyle(
                          color: MyTheme.primaryLight,
                          fontWeight: FontWeight.bold,
                          fontSize: 100,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                            height: 50,
                            width: 50,
                            child:
                                Image.asset("assets/images/add-to-cart.png")),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        item.description,
                        style: TextStyle(
                          color: MyTheme.primaryLight,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "₹ ${item.price}",
              style: TextStyle(
                color: hexToColor(item.color),
                fontWeight: FontWeight.bold,
                fontSize: 100,
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
