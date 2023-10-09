// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  const DrinkTile(
      {super.key,
      required this.menuName,
      required this.menuEnName,
      required this.menuPrice,
      required this.menuPicUrl});

  final String menuName;
  final String menuEnName;
  final String menuPrice;
  final String menuPicUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(menuPicUrl),
          radius: 48,
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              menuName,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              menuEnName,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${menuPrice}원',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        )
      ],
    );
  }
}
