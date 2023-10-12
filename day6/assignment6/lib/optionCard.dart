// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard(
      {super.key, required this.menuName, required this.menuImgUrl});

  final String menuName;
  final String menuImgUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image(
              image: AssetImage(menuImgUrl),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            menuName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text('[담기]',
              style: TextStyle(
                fontSize: 12,
              ))
        ],
      ),
    );
  }
}
