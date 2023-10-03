// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:assignment1/widget/ContactTile.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ContactTile(
            name: '이테디',
            imgUrl: 'https://picsum.photos/150/150',
            phoneNumber: '010-1000-1000'),
        ContactTile(
            name: '이테디',
            imgUrl: 'https://picsum.photos/200/50',
            phoneNumber: '010-1000-1000'),
        ContactTile(
            name: '이테디',
            imgUrl: 'https://picsum.photos/50/50',
            phoneNumber: '010-1000-1000')
      ],
    );
  }
}
