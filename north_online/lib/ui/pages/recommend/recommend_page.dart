import 'package:flutter/material.dart';

class RecommendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(state == '0' ? '新款推荐' : '爆款推荐')),
      body: _getGridView(),
    );
  }

  Widget _getGridView() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.5),
      itemBuilder: _getGridViewItem,
      itemCount: 20,
      padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
    );
  }

  Widget _getGridViewItem(BuildContext context, int index) {
    return Container(
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Image.asset('assets/images/file_icon.png')],
      ),
    );
  }
}
