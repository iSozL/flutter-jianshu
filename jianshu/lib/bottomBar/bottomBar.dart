import 'package:flutter/material.dart';
class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
              backgroundColor: Colors.grey[100], // 设置背景颜色
              type: BottomNavigationBarType.fixed, // flutter 默认4个标签以上设置为shifting
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                 this._currentIndex = index; 
                });
              },
              fixedColor: Colors.red, // 选中(激活状态颜色)
              items: [
                BottomNavigationBarItem(
                  title: Text("推荐",),
                  icon: Icon(Icons.home)
                ),
                BottomNavigationBarItem(
                  title: Text("关注"),
                  icon: Icon(Icons.bookmark,)
                ),
                BottomNavigationBarItem(
                  title: Text("书钻"),
                  icon: Icon(Icons.signal_wifi_4_bar)
                ),
                BottomNavigationBarItem(
                  title: Text("消息"),
                  icon: Icon(Icons.message)
                ),
                BottomNavigationBarItem(
                  title: Text("我的",),
                  icon: Icon(Icons.people)
                )
              ],
          );
  }
}