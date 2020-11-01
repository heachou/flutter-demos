import 'package:flutter/material.dart';
import 'package:flutter_hero/views/404/404.dart';
import './routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',
      routes: routes,
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) => NotFound(),
        );
      },
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primaryColor: Colors.blue,
      ),
    );
  }
}
