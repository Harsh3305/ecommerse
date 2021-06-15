import 'package:flutter/material.dart';

class LikePage extends StatefulWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Text("Like Page"),
    );
  }
}
