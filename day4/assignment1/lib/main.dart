// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: '사칙연산'), // 홈 페이지 호출(title 매개변수로 전달)
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title; // 앱 제목
  int x = 0; // x값 초기화
  int y = 0; // y값 초기화

  //사칙연산 결과 Dialog
  showResultDialog(BuildContext context, var result) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: 150,
            child: Center(
                child: Text(
              "$result",
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'X의 값은?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      onChanged: (value) {
                        x = int.parse(value);
                      },
                      decoration: InputDecoration(
                        hintText: 'X의 값을 입력하세요.',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.blue,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Y의 값은?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      onChanged: (value) {
                        y = int.parse(value);
                      },
                      decoration: InputDecoration(
                        hintText: 'Y의 값을 입력하세요.',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.blue,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              OutlinedButton(
                onPressed: () {
                  showResultDialog(context, x + y);
                },
                child: Text(
                  '더하기의 결과값은?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  showResultDialog(context, x * y);
                },
                child: Text(
                  '곱하기의 결과값은?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  showResultDialog(context, x - y);
                },
                child: Text(
                  '빼기의 결과값은?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  showResultDialog(context, x / y);
                },
                child: Text(
                  '나누기의 결과값은?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
