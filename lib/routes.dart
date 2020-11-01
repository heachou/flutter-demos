import 'package:flutter/material.dart';
import 'package:flutter_hero/views/dio-page/dio-page.dart';
import 'package:flutter_hero/views/listview/customScrollView.dart';
import 'package:flutter_hero/views/listview/listview.dart';
import 'package:flutter_hero/views/404/404.dart';
import 'package:flutter_hero/views/backDrop/backDrop.dart';
import 'package:flutter_hero/views/banner/banner.dart';
import 'package:flutter_hero/views/bottomNavigation/bottomNavigation.dart';
import 'package:flutter_hero/views/button/button.dart';
import 'package:flutter_hero/views/cards/cards.dart';
import 'package:flutter_hero/views/chips/chips.dart';
import 'package:flutter_hero/views/http/http.dart';
import 'package:flutter_hero/views/appBar/appBar.dart';
import 'package:flutter_hero/views/home/home.dart';
import 'package:flutter_hero/views/json_serializable/json_serializable.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => Home(),
  'appBar': (context) => AppBarPage(),
  'notFound': (context) => NotFound(),
  'backDrop': (context) => BackDropPage(),
  'banner': (context) => BannersPage(),
  'bottomNavigation': (context) => BottomNavigationPage(),
  'button': (context) => ButtonPage(),
  'cards': (context) => CardsPage(),
  'chips': (context) => ChipsPage(),
  'http': (context) => HttpPage(),
  'json_serializable': (context) => JsonSerializablePage(),
  'dio': (context) => DioPage(),
  'listview': (context) => ListviewPage(),
  'customScrollview': (context) => CustomScrollViewPage()
};
