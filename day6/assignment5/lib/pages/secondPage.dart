// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mathData = [
      26,
      2,
      9,
      47,
      98,
      24,
      43,
      99,
      96,
      45,
      35,
      19,
      37,
      60,
      31,
      74,
      26,
      4,
      28,
      19,
      59,
      14,
      75,
      13,
      93,
      88,
      64,
      15,
      68,
      34,
      96,
      48,
      1,
      44,
      14,
      11,
      31,
      39,
      28,
      100,
      22,
      73,
      78,
      98,
      36,
      49,
      74,
      16,
      35,
      91,
      14,
      73,
      93,
      49,
      3,
      99,
      4,
      29,
      86,
      56,
      17,
      13,
      97,
      55,
      94,
      7,
      100,
      66,
      59,
      85,
      94,
      11,
      16,
      48,
      16,
      44,
      75,
      14,
      17,
      88,
      92,
      12,
      49,
      35,
      42,
      82,
      19,
      27,
      11,
      21,
      34,
      27,
      47,
      40,
      66,
      90,
      99,
      93,
      63,
      90
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: ListView.builder(
        itemCount: mathData.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: mathData.map((e) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  height: 24,
                  width: e * 2,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.amber),
                  child: Center(
                    child: Text(
                      e.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
