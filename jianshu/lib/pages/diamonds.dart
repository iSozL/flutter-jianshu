import 'package:flutter/material.dart';
class Diamonds extends StatelessWidget {
  const Diamonds({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("diamonds"),
        ),
      ),
    );
  }
}