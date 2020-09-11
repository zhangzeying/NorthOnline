import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:north_online/core/constant/color_constant.dart';
import 'package:north_online/core/routers/router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var imageList = [
    "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2673179987,321664037&fm=26&gp=0.jpg",
    "http://via.placeholder.com/350x150",
    "http://via.placeholder.com/350x150",
    "http://via.placeholder.com/350x150"
  ];

  List _listData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 20; i++) {
      _listData.add({"title": '房间${i + 1}'});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("首页")),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _getBannerWidget(),
            ),
            _getGridList()
          ],
        ));
  }

  Widget _getBannerWidget() {
    return Container(
      height: 200,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            imageList[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: imageList.length,
        pagination: new SwiperPagination(),
        // control: new SwiperControl(),
      ),
    );
  }

  Widget _getGridList() {
    return SliverPadding(
      padding: EdgeInsets.all(20),
      sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(_getListItem,
              childCount: _listData.length),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 2.0)),
    );
  }

  Widget _getListItem(context, index) {
    final title = this._listData[index]['title'];
    return GestureDetector(
      child: Container(
        color: ColorConstant.themeColor,
        alignment: Alignment.center,
        child: Text(
          '$title',
          style: TextStyle(color: Colors.white, fontSize: 19),
        ),
      ),
      onTap: () => Navigator.of(context)
          .pushNamed(JARouter.roomDetailRoute, arguments: title),
    );
  }
}
