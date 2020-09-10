import 'package:flutter/material.dart';

class BannersPage extends StatelessWidget {
  const BannersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('banners'),
      ),
      body: MaterialBanner(
        content: const Text('Error message text'),
        leading: CircleAvatar(child: Icon(Icons.delete)),
        actions: [
          FlatButton(
            child: const Text('ACTION 1'),
            onPressed: () {},
          ),
          FlatButton(
            child: const Text('ACTION 2'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
