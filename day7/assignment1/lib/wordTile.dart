// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class WordTile extends StatelessWidget {
  const WordTile(
      {super.key,
      required this.word,
      required this.meaning,
      required this.example});
  final String word;
  final String meaning;
  final String example;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              word,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                letterSpacing: -1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              meaning,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                letterSpacing: -1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                '"${example}"',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}
