// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment4/Screens/contactScreen.dart';
import 'package:assignment4/Screens/historyScreen.dart';
import 'package:assignment4/Screens/settingScreen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentScreenPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          '내 연락처',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: [
        ContactPage(),
        HistoryPage(),
        SettingPage(),
      ][currentScreenPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          currentScreenPage = value;
          setState(() {});
        },
        currentIndex: currentScreenPage,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: '연락처'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: '통화기록'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '설정')
        ],
      ),
    );
  }
}
