import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404 not found'),
      ),
      body: Center(
        child: Text('404 Not Found'),
      ),
    );
  }
}
