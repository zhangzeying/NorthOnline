import 'package:flutter/material.dart';
import 'package:north_online/ui/pages/main/main_page.dart';
import 'package:north_online/ui/pages/recommend/recommend_page.dart';
import 'package:north_online/ui/pages/room_detail/room_detail_page.dart';

class JARouter {
  //首页路由
  static final String initialRoute = '/';
  //房间详情页路由
  static final String roomDetailRoute = '/roomDetail';
  //新款爆款推荐页路由
  static final String recommendRoute = '/recommend';

  static final Map<String, WidgetBuilder> routes = {
    initialRoute: (context) => MainPage(),
    roomDetailRoute: (context) => RoomDetailPage(),
    recommendRoute: (context) => RecommendPage()
  };

  static final RouteFactory generateRoute = (settings) {};

  static final RouteFactory unknownRoute = (settings) {};
}
