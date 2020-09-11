import 'package:flutter/material.dart';
import '../home/home_page.dart';
import '../map/map_page.dart';
import '../my/my_page.dart';

final List<Widget> pages = [HomePage(), MapPage(), MyPage()];

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
  BottomNavigationBarItem(icon: Icon(Icons.photo), title: Text('地图')),
  BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我的'))
];
