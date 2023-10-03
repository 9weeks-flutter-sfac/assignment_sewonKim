// ignore_for_file: prefer_const_constructors

import 'package:assignment1/widget/ContactTile.dart';
import 'package:flutter/material.dart';

class ContactDetailPage extends StatelessWidget {
  const ContactDetailPage(
      {super.key,
      required this.name,
      required this.phoneNumber,
      required this.imgUrl});
  final String name;
  final String phoneNumber;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.network(
            imgUrl,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
          ContactTile(name: name, imgUrl: imgUrl, phoneNumber: phoneNumber),
        ],
      ),
    );
  }
}
