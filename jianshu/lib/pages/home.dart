import 'package:flutter/material.dart';
import '../topbar/topBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.white, dividerColor: Color(0xffeeeeee)),
        home: TopBar());
  }
}
