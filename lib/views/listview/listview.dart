import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  ListviewPage({Key key}) : super(key: key);

  @override
  _ListviewPageState createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  List list = new List();
  int _page = 1; //加载的页数
  bool isLoading = false; //是否正在加载数据
  ScrollController _scrollController = ScrollController();

  @override
  initState() {
    super.initState();
    getData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >
          _scrollController.position.maxScrollExtent - 200) {
        print('滑动到了最底部');
        _getMore();
      }
    });
  }

  Future getData() async {
    await Future.delayed(Duration(seconds: 0), () {
      setState(() {
        list = List.generate(15, (index) => '原始数据 $index');
      });
    });
  }

  Widget _buildListView() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.blueGrey,
          height: 60,
          margin: EdgeInsets.only(top: 5),
          child: Center(child: Text('${list[index]}')),
        );
      },
      itemCount: list.length,
      controller: _scrollController,
    );
  }

  Future<void> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
      list.clear();
      setState(() {
        list = List.generate(20, (i) => '哈喽,我是新刷新的 $i');
      });
    });
  }

/**
   * 上拉加载更多
   */
  Future _getMore() async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });
      await Future.delayed(Duration(seconds: 1), () {
        print('加载更多');
        setState(() {
          list.addAll(List.generate(10, (i) => '第$_page次上拉来的数据'));
          _page++;
          isLoading = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'listview,上拉加载，下拉刷新，回到顶部',
          style: TextStyle(fontSize: 15),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //
          _scrollController.animateTo(1,
              duration: Duration(seconds: 1), curve: Curves.ease);
        },
        child: Icon(Icons.arrow_upward),
      ),
      body: RefreshIndicator(
        displacement: 100.0,
        onRefresh: _onRefresh,
        child: _buildListView(),
      ),
    );
  }

  @override
  void dispose() {
    print("离开页面");
    super.dispose();
    _scrollController.dispose();
  }
}
