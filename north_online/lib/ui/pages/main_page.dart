import 'package:flutter/material.dart';

import 'home/home_page.dart';
import 'map/map_page.dart';
import 'my/my_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _tabIndex = 0;

  var _pageList = [HomePage(), MapPage(), MyPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_tabIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页"),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.photo), title: Text("地图")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("我的")),
          ],
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
          iconSize: 24,
          unselectedFontSize: 14,
          selectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          currentIndex: _tabIndex,
        ),
      ),
    );
  }
}
