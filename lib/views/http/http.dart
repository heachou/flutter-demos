import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../models/person.dart';
import '../../service/person_service.dart';
import 'package:http/http.dart' as http;

class HttpPage extends StatefulWidget {
  HttpPage({Key key}) : super(key: key);

  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  String text = '';
  getBaidu() async {
    String url = 'https://www.baidu.com';

    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    setState(() {
      text = response.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('http demo'),
      ),
      body: Column(
        children: [
          FlatButton(
              onPressed: () {
                getBaidu();
              },
              child: Text('get baidu')),
          Text(text),
          FlatButton(
              onPressed: () async {
                Person person = await decodePerson();
                Fluttertoast.showToast(msg: 'age: ${person.age}');
                print(person.age);
              },
              child: Text('click me!'))
        ],
      ),
    );
  }
}
