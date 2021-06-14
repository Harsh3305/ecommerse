import 'package:ecommerse/pages/login_page.dart';
import 'package:ecommerse/utils/my_routes.dart';
import 'package:ecommerse/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:ecommerse/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme(context),
      theme: MyTheme.lightTheme(context),
      routes: {
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
      initialRoute: MyRoutes.loginRoute,
      // theme:
    );
  }
}
