// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment5/pages/firstPage.dart';
import 'package:assignment5/pages/secondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageView(
        children: [
          FirstPage(),
          SecondPage(),
        ],
      ),
    );
  }
}
