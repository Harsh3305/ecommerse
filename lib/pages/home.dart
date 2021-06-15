import 'dart:convert';

import 'package:ecommerse/utils/my_routes.dart';
import 'package:ecommerse/widgets/cart_item.dart';
import 'package:ecommerse/widgets/like_item.dart';
import 'package:ecommerse/widgets/my_app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'package:ecommerse/models/catelog.dart';
import 'package:ecommerse/widgets/item_widge.dart';
import 'package:ecommerse/widgets/navigation_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadProductData();
    loadCartData();
    loadLikeData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.cartRoute);
            },
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset("assets/images/add-to-cart.png",
                    width: 110.0, height: 110.0),
              ),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.likeRoute);
            },
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset("assets/images/heart.png",
                    width: 110.0, height: 110.0),
              ),
            ),
          ),
          SizedBox(
            width: 50,
          ),
        ],
      ),
      drawer: NavigationBar(),
      body: (CatalogItem.products != null && CatalogItem.products.isNotEmpty)
          ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
              itemBuilder: (context, index) {
                final item = CatalogItem.products[index];
                return ItemWidge(item: item);
              },
              itemCount: CatalogItem.products.length,
            )
          : Center(child: SleekCircularSlider()),
    );
  }

  loadProductData() async {
    await Future.delayed(Duration(seconds: 2));
    final categoryJson =
        await rootBundle.loadString("assets/files/catalog.json");
    // print(categoryJson);
    final decoded = jsonDecode(categoryJson);

    var productData = decoded["products"];

    // List<Item> list =
    CatalogItem.products =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
    // print(productData);

    return;
  }

  loadCartData() async {
    await Future.delayed(Duration(seconds: 2));
    final categoryJson = await rootBundle.loadString("assets/files/cart.json");
    // print(categoryJson);
    final decoded = jsonDecode(categoryJson);

    var productData = decoded["products"];

    // List<Item> list =
    CartProduct.products =
        List.from(productData).map<Cart>((item) => Cart.fromMap(item)).toList();

    setState(() {});
    return;
  }

  loadLikeData() async {
    await Future.delayed(Duration(seconds: 2));
    final likeJson = await rootBundle.loadString("assets/files/like.json");
    // print(categoryJson);
    final decoded = jsonDecode(likeJson);

    var productData = decoded["products"];

    // List<Item> list =
    LikeProduct.products =
        List.from(productData).map<Like>((item) => Like.fromMap(item)).toList();

    setState(() {});
    return;
  }
}
// Card(
//                     clipBehavior: Clip.antiAlias,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(100)),
//                     child: GridTile(
//                       child: Image.network(item.image),
//                       header: Container(
//                         padding: const EdgeInsets.all(50),
//                         child: Text(
//                           item.name,
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.blue),
//                         ),
//                       ),
//                       footer: Container(
//                         padding: const EdgeInsets.all(50),
//                         child: Text(
//                           "₹ ${item.price}",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.blue),
//                         ),
//                       ),
//                     ))