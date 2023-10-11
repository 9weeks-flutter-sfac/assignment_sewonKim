// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

List animalList = ['강아지', '고양이', '앵무새', '토끼', '오리', '거위', '원숭이'];

final scrollController = ScrollController();

void scrollTop() {
  scrollController.animateTo(0,
      duration: Duration(milliseconds: 500), curve: Curves.linear);
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5일차 과제'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView.builder(
              controller: scrollController,
              itemCount: animalList.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                      padding: EdgeInsets.all(20),
                      height: 300,
                      child: Text(
                        '${animalList[index]}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                );
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scrollTop();
        },
        child: Icon(Icons.upload),
      ),
    );
  }
}
