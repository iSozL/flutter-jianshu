import 'package:flutter/material.dart';
class Mine extends StatelessWidget {
  const Mine({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("mine"),
        ),
      ),
    );
  }
}