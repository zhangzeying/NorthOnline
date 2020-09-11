import 'package:flutter/material.dart';
import 'package:north_online/core/routers/router.dart';
import 'core/constant/color_constant.dart';

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
        canvasColor: Colors.white,
        backgroundColor: Colors.white,
        primaryColor: ColorConstant.themeColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: JARouter.initialRoute,
      routes: JARouter.routes,
      onGenerateRoute: JARouter.generateRoute,
      onUnknownRoute: JARouter.unknownRoute,
    );
  }
}
