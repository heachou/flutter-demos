import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioPage extends StatefulWidget {
  DioPage({Key key}) : super(key: key);

  @override
  _DioPageState createState() => _DioPageState();
}

_getIp() async {
  final url = 'https://httpbin.org/ip';
  Dio dio = Dio();
  var response = await dio.get(url);
  print(response);
}

class _DioPageState extends State<DioPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('dio plugin'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: size.width,
                child: RaisedButton(
                  onPressed: _getIp,
                  child: Text(
                    'get${size.width}',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blueAccent,
                ),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'get',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueAccent,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'get',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueAccent,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'get',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueAccent,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'get',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueAccent,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'get',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
