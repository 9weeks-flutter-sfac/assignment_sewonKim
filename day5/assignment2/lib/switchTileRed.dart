// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class switchTileRed extends StatefulWidget {
  const switchTileRed(
      {super.key,
      required this.icons,
      required this.iconName,
      required this.text,
      required this.textBool});

  final IconData icons;
  final String iconName;
  final bool text;
  final bool textBool;

  @override
  State<switchTileRed> createState() => _switchTileState();
}

class _switchTileState extends State<switchTileRed> {
  bool switchWidget = false;

  void switchMannual() {}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.icons,
          color: widget.textBool
              ? widget.text
                  ? Colors.red
                  : Colors.grey
              : switchWidget
                  ? Colors.red
                  : Colors.grey),
      title: Text(widget.iconName),
      trailing: IconButton(
          onPressed: () {
            switchWidget = !switchWidget;
            setState(() {});
          },
          icon: Icon(Icons.arrow_right)),
    );
  }
}
