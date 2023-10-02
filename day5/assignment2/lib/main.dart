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

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            switchTileRed(icons: Icons.sunny, iconName: 'Sun'),
            switchTileYellow(icons: Icons.nightlight_round, iconName: 'Moon'),
            switchTileYellow(icons: Icons.star, iconName: 'Star'),
          ],
        ),
      ),
    );
  }
}
