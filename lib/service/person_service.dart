import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:async';
import '../models/person.dart';

Future<String> _loadPersonJson() async {
  return await rootBundle.loadString('assets/json/person.json');
}

Future<Person> decodePerson() async {
  // 获取本地的 json 字符串
  String personJson = await _loadPersonJson();

  // 解析 json 字符串，返回的是 Map<String, dynamic> 类型
  final jsonMap = json.decode(personJson);

  print('jsonMap runType is ${jsonMap.runtimeType}');

  Person person = Person.fromJson(jsonMap);

  print(
      'person name is ${person.name}, age is ${person.age}, height is ${person.height}');

  return person;
}
