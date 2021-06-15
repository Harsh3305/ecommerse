import 'dart:convert';

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
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        backgroundColor: Colors.white,
      ),
      drawer: NavigationBar(),
      body: (CatalogItem.products != null && CatalogItem.products.isNotEmpty)
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ItemWidge(
                  item: CatalogItem.products[index],
                );
              },
              itemCount: CatalogItem.products.length,
            )
          : Center(child: SleekCircularSlider()),
    );
  }

  loadData() async {
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
}
