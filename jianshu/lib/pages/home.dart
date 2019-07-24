import 'package:flutter/material.dart';
import '../topbar/topBar.dart';
import '../pages/message.dart';
import '../pages/diamonds.dart';
import '../pages/follow.dart';
import '../pages/mine.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var pages = [TopBar(), Follow(), Diamonds(), Message(), Mine()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.white, dividerColor: Color(0xffeeeeee)),
        home: Scaffold(
            body: pages[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.grey[100], // 设置背景颜色
              type:
                  BottomNavigationBarType.fixed, // flutter 默认4个标签以上设置为shifting
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  this.currentIndex = index;
                  print(this.currentIndex);
                });
              },
              fixedColor: Colors.red, // 选中(激活状态颜色)
              items: [
                BottomNavigationBarItem(
                  title: Text(
                    "推荐",
                  ),
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                    title: Text("关注"),
                    icon: Icon(
                      Icons.bookmark,
                    )),
                BottomNavigationBarItem(
                    title: Text("书钻"), icon: Icon(Icons.signal_wifi_4_bar)),
                BottomNavigationBarItem(
                    title: Text("消息"), icon: Icon(Icons.message)),
                BottomNavigationBarItem(
                    title: Text(
                      "我的",
                    ),
                    icon: Icon(Icons.people))
              ],
            )));
  }
}
