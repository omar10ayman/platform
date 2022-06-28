import 'package:button/logo.dart';
import 'package:button/word.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"word": (context) => Words()},
      debugShowCheckedModeBanner: false,
      home: Logo(),
    );
  }
}
