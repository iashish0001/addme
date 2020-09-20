import 'dart:async';
import 'package:addme/Basic_info.dart';
import 'package:addme/Home.dart';

import 'package:flutter/material.dart';

import 'Login.dart';

void main() {
  runApp(
    MaterialApp(
//    home: MyApp(),
      initialRoute: '/',
      routes: {'/': (context) => Home(), '/login': (context) => Basicinfo()},
      debugShowCheckedModeBanner: false,
    ),
  );
}

//class MyApp extends StatefulWidget {
//  @override
//  _MyAppState createState() => _MyAppState();
//}
//
//class _MyAppState extends State<MyApp> {
//  @override
//  Widget build(BuildContext context) {
//    return Home();
////    return Login();
////    return Basicinfo();
//  }
//}
