import 'package:flutter/material.dart';
import 'views/404/404.dart';
import 'views/backDrop/backDrop.dart';
import 'views/banner/banner.dart';
import 'views/bottomNavigation/bottomNavigation.dart';
import 'views/button/button.dart';
import 'views/cards/cards.dart';
import 'views/chips/chips.dart';
import 'views/http/http.dart';
import 'views/appBar/appBar.dart';
import 'views/home/home.dart';
import 'views/json_serializable/json_serializable.dart';

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
  'json_serializable': (context) => JsonSerializablePage()
};
