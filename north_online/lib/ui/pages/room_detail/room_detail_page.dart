import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:north_online/core/constant/color_constant.dart';
import 'package:north_online/core/routers/router.dart';

class RoomDetailPage extends StatefulWidget {
  const RoomDetailPage({Key key}) : super(key: key);

  @override
  _RoomDetailPageState createState() => _RoomDetailPageState();
}

class _RoomDetailPageState extends State<RoomDetailPage> {
  final List<String> imageArray = [
    "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2673179987,321664037&fm=26&gp=0.jpg",
    "http://via.placeholder.com/350x150",
    "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2673179987,321664037&fm=26&gp=0.jpg"
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final roomName = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text('$roomName')),
      body: Stack(
        children: [
          _getImageListView(context),
          Positioned(
            child: _getFloatButtonWidget(),
            bottom: 80.h,
            right: 20,
          )
        ],
      ),
    );
  }

  Widget _getImageListView(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return _getImageWidget(context, imageArray[index]);
      },
      itemCount: imageArray.length,
    );
  }

  Widget _getImageWidget(context, imageUrl) {
    // double screenHeight = MediaQuery.of(context).size.height;
    // double topPadding = MediaQuery.of(context).padding.top;
    return Container(
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: imageUrl,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
      // height: (screenHeight - topPadding - 44) / 2,
      // width: double.infinity,
    );
  }

  Widget _getFloatButtonWidget() {
    return Column(
      children: [
        FloatingActionButton(
            backgroundColor: ColorConstant.themeColor,
            onPressed: () => Navigator.of(context)
                .pushNamed(JARouter.recommendRoute, arguments: "0"),
            child: Text(
              '新款\n推荐',
              textAlign: TextAlign.center,
            ),
            heroTag: 'new'),
        SizedBox(
          height: 50,
        ),
        FloatingActionButton(
          backgroundColor: ColorConstant.themeColor,
          onPressed: () => Navigator.of(context)
              .pushNamed(JARouter.recommendRoute, arguments: "1"),
          child: Text('爆款\n推荐', textAlign: TextAlign.center),
          heroTag: 'hot',
        ),
      ],
    );
  }
}
