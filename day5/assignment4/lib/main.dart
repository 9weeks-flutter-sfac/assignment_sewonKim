// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

bool isSunClicked = false;
bool isMoonClicked = false;
bool isStarClicked = false;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: !isSunClicked
                      ? Icon(Icons.sunny)
                      : Icon(
                          Icons.sunny,
                          color: Colors.red,
                        ),
                  title: Text('Sun'),
                  trailing: IconButton(
                    icon: Icon(Icons.navigate_next),
                    onPressed: () {
                      isSunClicked = !isSunClicked;
                      setState(() {});
                    },
                  ),
                ),
                ListTile(
                  leading: !isMoonClicked
                      ? Icon(Icons.nightlight)
                      : Icon(
                          Icons.nightlight,
                          color: Colors.yellow,
                        ),
                  title: Text('Moon'),
                  trailing: IconButton(
                    icon: Icon(Icons.navigate_next),
                    onPressed: () {
                      isMoonClicked = !isMoonClicked;
                      setState(() {});
                    },
                  ),
                ),
                ListTile(
                  leading: !isStarClicked
                      ? Icon(Icons.star)
                      : Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                  title: Text('Star'),
                  trailing: IconButton(
                    icon: Icon(Icons.navigate_next),
                    onPressed: () {
                      isStarClicked = !isStarClicked;
                      setState(() {});
                    },
                  ),
                ),
                TextField(
                  onSubmitted: (value) {
                    if (value == '태양') {
                      isSunClicked = !isSunClicked;
                    } else if (value == '달') {
                      isMoonClicked = !isMoonClicked;
                    } else if (value == '별') {
                      isStarClicked = !isStarClicked;
                    }
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            isMoonClicked = false;
            isStarClicked = false;
            isSunClicked = false;
            setState(() {});
          },
          child: Icon(Icons.settings_backup_restore_sharp),
        ),
      ),
    );
  }
}
