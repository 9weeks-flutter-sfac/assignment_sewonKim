import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  const MenuTile(
      {super.key,
      required this.menuName,
      required this.menuSubtitle,
      required this.menuIcon});

  final String menuName;
  final String menuSubtitle;
  final String menuIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ListTile(
        tileColor: Colors.white,
        title: Text(
          menuName,
          style: TextStyle(
            color: Colors.blue[600],
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: Text(
          menuSubtitle,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Image(
          image: AssetImage(menuIcon),
          width: 45,
        ),
      ),
    );
  }
}
