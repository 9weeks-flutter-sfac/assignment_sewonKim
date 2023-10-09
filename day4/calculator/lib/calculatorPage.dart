// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

showResultDialog(BuildContext context, var result) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
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

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    int x = 0;
    int y = 0;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('X의 값은'),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 50,
                    width: 180,
                    child: TextField(
                      onChanged: (value) {
                        x = int.parse(value);
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 10)),
                        hintText: 'X의 값을 입력하세요.',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Y의 값은'),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 50,
                    width: 180,
                    child: TextField(
                      onChanged: (value) {
                        y = int.parse(value);
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 10)),
                        hintText: 'Y의 값을 입력하세요.',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(150, 0)),
                onPressed: () {
                  showResultDialog(context, x + y);
                },
                child: Text('더하기의 결과값은?'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(150, 0)),
                onPressed: () {
                  showResultDialog(context, x * y);
                },
                child: Text('곱하기의 결과값은?'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(150, 0)),
                onPressed: () {
                  showResultDialog(context, x - y);
                },
                child: Text('빼기의 결과값은?'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(150, 0)),
                onPressed: () {
                  showResultDialog(context, x / y);
                },
                child: Text('나누기의 결과값은?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
