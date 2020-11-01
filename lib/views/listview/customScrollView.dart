import 'package:flutter/material.dart';

class CustomScrollViewPage extends StatefulWidget {
  CustomScrollViewPage({Key key}) : super(key: key);

  @override
  _CustomScrollViewPageState createState() => _CustomScrollViewPageState();
}

class _CustomScrollViewPageState extends State<CustomScrollViewPage> {
  SliverAppBar _buildSliverAppBar() {
    return SliverAppBar(
      title: Text("讲解组合滑动"),
    );
  }

  SliverFixedExtentList _buildSliverFixedExtentList() {
    return SliverFixedExtentList(
      ///子条目的高度
      itemExtent: 40,

      ///子条目布局构建代理
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, num index) {
          ///子条目的布局样式
          return Container(
            color: Colors.red,
            child: Text("list $index"),
            margin: EdgeInsets.only(bottom: 10),
          );
        },

        ///子条目的个数
        childCount: 40,
      ),
    );
  }

  SliverGrid _buildSliverGrid() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        ///九宫格的列数
        crossAxisCount: 3,

        ///子Widget 宽与高的比值
        childAspectRatio: 2.0,

        ///主方向的 两个 子Widget 之间的间距
        mainAxisSpacing: 10,

        /// 次方向 子Widget 之间的间距
        crossAxisSpacing: 10,
      ),

      ///子Item构建器
      delegate: new SliverChildBuilderDelegate(
        (BuildContext context, num index) {
          ///每一个子Item的样式
          return Container(
            color: Colors.blue,
            child: Text("grid $index"),
          );
        },

        ///子Item的个数
        childCount: 10,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('customer'),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          _buildSliverAppBar(),
          SliverPadding(padding: EdgeInsets.all(5)),
          _buildSliverGrid(),

          ///间距
          SliverPadding(
            padding: EdgeInsets.all(5),
          ),

          ///列表
          _buildSliverFixedExtentList()
        ],
      ),
    );
  }
}
