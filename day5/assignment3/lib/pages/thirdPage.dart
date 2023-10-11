// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

var textEditingContoroller = TextEditingController();
void miroringText() {
  textEditingContoroller.dispose();
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5일차 과제'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              textAlign: TextAlign.center,
              controller: textEditingContoroller,
              onChanged: (value) {
                setState(() {});
              },
            ),
            SizedBox(
              height: 50,
            ),
            Text(textEditingContoroller.text),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          textEditingContoroller.clear();
          setState(() {});
        },
        child: Icon(Icons.close),
      ),
    );
  }
}
