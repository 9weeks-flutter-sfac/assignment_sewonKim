// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, deprecated_member_use, unnecessary_brace_in_string_interps

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

var dio = Dio();

void getData() async {
  for (var i = 100; i <= 150; i++) {
    try {
      var response = await dio.post(
        "https://sniperfactory.com/sfac/http_assignment_${i}",
        options: Options(
          headers: {
            'user-agent': 'SniperFactoryBrowser',
            'authorization': 'Bearer ey-12321321321',
          },
        ),
      );
      print(response.data);
      print('찾았다. $i');
      break;
    } catch (e) {
      print('못찾았다.');
    }
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
                onPressed: () {
                  getData();
                },
                child: Text('시작')),
          ),
        ),
      ),
    );
  }
}
