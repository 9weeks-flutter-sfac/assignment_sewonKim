// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class switchTileYellow extends StatefulWidget {
  const switchTileYellow(
      {super.key, required this.icons, required this.iconName});

  final IconData icons;
  final String iconName;

  @override
  State<switchTileYellow> createState() => _switchTileState();
}

class _switchTileState extends State<switchTileYellow> {
  bool switchWidget = false;

  void switchMannual() {}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.icons),
      title: Text(widget.iconName),
      iconColor: switchWidget ? Colors.yellow : Colors.grey,
      trailing: IconButton(
          onPressed: () {
            switchWidget = !switchWidget;
            setState(() {});
          },
          icon: Icon(Icons.arrow_right)),
    );
  }
}
