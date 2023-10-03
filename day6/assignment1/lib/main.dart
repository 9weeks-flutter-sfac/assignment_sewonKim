// ignore_for_file: prefer_const_constructors

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
          title: Text('내 연락처'),
        ),
      ),
    );
  }
}

class FistPage extends StatefulWidget {
  const FistPage({super.key});

  @override
  State<FistPage> createState() => _FistPageState();
}

class _FistPageState extends State<FistPage> {
  List<String> myContacts = [''];

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
