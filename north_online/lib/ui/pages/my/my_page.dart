import 'package:flutter/material.dart';
import 'package:north_online/core/constant/color_constant.dart';
import 'package:north_online/core/routers/router.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final List<String> dataList = ['修改密码', '联系客服', '退出'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("我的")),
      body: _getListViewSection(),
    );
  }

  Widget _getListViewSection() {
    return ListView.separated(
        itemBuilder: _getListItem,
        separatorBuilder: (context, index) {
          return Divider(
            color: ColorConstant.normalEEEColor,
            thickness: 1,
            indent: 15,
            endIndent: 15,
          );
        },
        itemCount: dataList.length);
  }

  Widget _getListItem(context, index) {
    return ListTile(
      title: Text(dataList[index]),
      onTap: () => Navigator.of(context).pushNamed(JARouter.roomDetailRoute),
    );
  }
}
