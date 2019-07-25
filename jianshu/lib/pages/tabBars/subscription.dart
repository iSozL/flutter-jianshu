import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:jianshu/base/data.dart';
import '../../base/data.dart';

class Subscription extends StatefulWidget {
  Subscription({Key key}) : super(key: key);

  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: subscriptData
              .map(
                (item) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebviewScaffold(
                                    url:
                                        'https://jianshu.com/c/${item["slug"]}',
                                    appBar: AppBar(
                                      title: Text("Subscription"),
                                    ),
                                    withLocalStorage: true,
                                    // 允许LocalStorage
                                    withJavascript: true,
                                    withZoom: true,
                                  )));
                    },
                    child: Container(
                      width: 116,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12)),
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            item["avatar_url"].toString(),
                            width: 116,
                            height: 70,
                            fit: BoxFit.fill,
                          ),
                          Text(item["title"].toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(
                            "${item["public_notes_count"]}人关注",
                            style:
                                TextStyle(color: Colors.black12, fontSize: 12),
                          )
                        ],
                      ),
                    )),
              )
              .toList(),
        )
      ],
    );
  }
}
