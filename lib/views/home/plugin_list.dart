import 'package:flutter/material.dart';

class PluginList extends StatefulWidget {
  PluginList({Key key}) : super(key: key);

  @override
  _PluginListState createState() => _PluginListState();
}

class _PluginListState extends State<PluginList> {
  List<Map> list = [
    {'name': 'http', 'path': 'http'},
    {'name': 'json_serializable', 'path': 'json_serializable'},
    {'name': 'Dio', 'path': 'dio'},
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
