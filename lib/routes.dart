import 'package:flutter/material.dart';
import './views/appBarPage.dart';
import './views/home.dart';

final Map<String, WidgetBuilder> routes = {
  'appBar': (context) => AppBarPage(),
  '/': (context) => Home()
};
