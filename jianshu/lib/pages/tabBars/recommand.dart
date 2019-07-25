import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:http/http.dart' as http;

class Recommand extends StatefulWidget {
  Recommand({Key key}) : super(key: key);

  _RecommandState createState() => _RecommandState();
}

class _RecommandState extends State<Recommand> {
  List data;
  _getData() async {
    await http
        .get('https://www.jianshu.com/asimov/trending/now?count=30')
        .then((http.Response response) {
      var responseData = json.decode(response.body);
      setState(() {
        this.data = responseData;
      });
      //  print(this.data[1]["object"]["data"]["title"]);
      // 处理响应数据
    }).catchError((error) {
      print('$error错误');
    });
  }

  Future _onRefresh() async {
    http
        .get('https://www.jianshu.com/asimov/trending/now?count=10')
        .then((http.Response response) {
      setState(() {
        var res = json.decode(response.body);
        this.data = res.addAll(this.data);
      });
    });
    return null;
  }

  ScrollController _scrollController = new ScrollController();
  _RecommandState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        http
            .get('https://www.jianshu.com/asimov/trending/now?count=50')
            .then((http.Response response) {
          setState(() {
            var res = json.decode(response.body);
            this.data.addAll(res);
          });
        });
        // _getMore();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    if (data == null || data.isEmpty) {
      _getData();
    }
    if (data != null && data.isNotEmpty) {
      return RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView(
          controller: _scrollController,
          children: <Widget>[
            Column(
              children: data
                  .map((value) => Card(
                        child: Column(
                          children: <Widget>[
                            // Text(value["object"]["data"]["title"].toString())
                            Container(
                                width: double.infinity, // 撑满屏幕
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        flex: 3,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        WebviewScaffold(
                                                          url:
                                                              'https://jianshu.com/p/${value["object"]["data"]["slug"]}',
                                                          appBar: AppBar(
                                                            title:
                                                                Text("Reading"),
                                                          ),
                                                          withLocalStorage:
                                                              true,
                                                          // 允许LocalStorage
                                                          withJavascript: true,
                                                          withZoom: true,
                                                        )));
                                          },
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                  value["object"]["data"]
                                                          ["title"]
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.start),
                                              Text(value["object"]["data"]
                                                  ["public_abbr"]),
                                              Row(
                                                children: <Widget>[
                                                  SizedBox(width: 5,),
                                                  Icon(Icons.signal_wifi_4_bar, size: 14, color: Colors.red,),
                                                  SizedBox(width: 2,),
                                                  Text(value["object"]["data"]["total_fp_amount"].toString(), style: TextStyle(color: Colors.red),),
                                                  SizedBox(width: 2,),
                                                  Text("  ${value["object"]["data"]["public_comments_count"].toString()}评论   ${value["object"]["data"]["likes_count"].toString()}喜欢"
                                                  , style: TextStyle(color: Colors.black26),)
                                                ],
                                              )
                                            ],
                                          ),
                                        )),
                                    // 有图片渲染,无图片不渲染
                                    value["object"]["data"]["list_image_url"] !=
                                            ""
                                        ? Expanded(
                                            flex: 1,
                                            child: Image.network(
                                              value["object"]["data"]
                                                      ["list_image_url"]
                                                  .toString(),
                                              height: 80,
                                              width: double.infinity,
                                            ))
                                        : Text("")
                                  ],
                                ))
                          ],
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      );
    } else {
      // 没有拿到数据前显示
      return Text("等等我嘛");
    }
  }
}
