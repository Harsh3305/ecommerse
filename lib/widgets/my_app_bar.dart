import 'package:ecommerse/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Catalog App"),
      backgroundColor: Colors.white,
      actions: [
        Image.asset("assets/images/user.png"),
        Image.asset("assets/images/user.png"),
      ],
    );
  }
}

// NavigationBar