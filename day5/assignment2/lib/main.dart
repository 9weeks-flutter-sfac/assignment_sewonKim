// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment2/switchTileRed.dart';
import 'package:assignment2/switchTileYellow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final TextEditingController textEditingController = TextEditingController();

  String content = '';
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            switchTileRed(
              icons: Icons.sunny,
              iconName: 'Sun',
              text: text == '태양',
              textBool: content == '태양',
            ),
            switchTileYellow(
              icons: Icons.nightlight_round,
              iconName: 'Moon',
              text: text == '달',
              textBool: content == '달',
            ),
            switchTileYellow(
              icons: Icons.star,
              iconName: 'Star',
              text: text == '별',
              textBool: content == '별',
            ),
            TextField(
              controller: textEditingController,
              onSubmitted: (value) {
                content = value;
                if (text.isEmpty) {
                  text = textEditingController.text;
                } else {
                  text = "";
                }
                setState(() {});
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            )
          ],
        ),
      ),
    );
  }
}
