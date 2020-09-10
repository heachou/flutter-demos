import 'package:flutter/material.dart';

class WidgetList extends StatefulWidget {
  WidgetList({Key key}) : super(key: key);

  @override
  _WidgetListState createState() => _WidgetListState();
}

class _WidgetListState extends State<WidgetList> {
  List<Map> list = [
    {'name': 'AppBar', 'path': 'appBar'},
    {'name': 'button', 'path': 'button'},
    {'name': 'hcoder', 'path': 16},
    {'name': 'graceui', 'path': 18},
    {'name': 'hcoder', 'path': 16},
    {'name': 'graceui', 'path': 18},
    {'name': 'hcoder', 'path': 16},
    {'name': 'graceui', 'path': 18},
    {'name': 'hcoder', 'path': 16},
    {'name': 'graceui', 'path': 18},
    {'name': 'phpgrace', 'path': 20}
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: list.length,
        padding: EdgeInsets.all(0),
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 1,
            color: Colors.grey[200],
          );
        },
        itemBuilder: (BuildContext context, int index) {
          final text = list[index]['name'];
          final path = list[index]['path'];
          return ListTile(
            title: Text(text),
            dense: true,
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => Navigator.pushNamed(context, path),
          );
        });
  }
}
