import 'package:flutter/material.dart';
import 'core/constant/color_constant.dart';
import 'ui/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '北区在线',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
        primaryColor: ColorConstant.themeColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}
