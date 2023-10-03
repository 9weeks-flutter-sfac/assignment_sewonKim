// ignore_for_file: camel_case_types, must_be_immutable, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({super.key, required this.imageUrl, required this.foodName});
  final String imageUrl;
  final String foodName;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Text(foodName),
          Text('담기'),
        ],
      ),
    );
  }
}
