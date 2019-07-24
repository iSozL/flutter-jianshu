
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
class Recommand extends StatefulWidget {
  Recommand({Key key}) : super(key: key);

  _RecommandState createState() => _RecommandState();
}

class _RecommandState extends State<Recommand> {
  var data;
  _getData() {
    http.get('https://www.jianshu.com/asimov/trending/now?count=15')
    .then((http.Response response) {
     var responseData = json.decode(response.body);
     //处理响应数据
     print(responseData[1]["object"]["data"]);
    }).catchError((error) {
      print('$error错误');
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RaisedButton(
          onPressed: _getData(),
          child: Text("nmsl"),
        )
      ],
    );
  }
}