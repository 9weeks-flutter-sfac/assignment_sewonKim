// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '아워리스트',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black87,
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.airplay)),
            Padding(
                padding: EdgeInsets.only(right: 10), child: Icon(Icons.search)),
          ],
        ),
        body: ListView(
          children: [],
        ),
      ),
    );
  }
}
