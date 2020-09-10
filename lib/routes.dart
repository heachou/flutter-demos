import 'package:flutter/material.dart';
import 'package:flutter_hero/views/404/404.dart';
import 'package:flutter_hero/views/backDrop/backDrop.dart';
import 'package:flutter_hero/views/banner/banner.dart';
import 'views/appBar/appBar.dart';
import 'views/home/home.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => Home(),
  'appBar': (context) => AppBarPage(),
  'notFound': (context) => NotFound(),
  'backDrop': (context) => BackDropPage(),
  'banner': (context) => BannersPage()
};
