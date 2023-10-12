// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment4/widget/contactTile.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ContactTile(
                      name: '이테디',
                      phoneNumber: '010-1000-1000',
                      profileUrl: 'https://picsum.photos/200/50'),
                  ContactTile(
                      name: '주노',
                      phoneNumber: '010-1000-1000',
                      profileUrl: 'https://picsum.photos/150/50'),
                  ContactTile(
                      name: '마르코',
                      phoneNumber: '010-1000-1000',
                      profileUrl: 'https://picsum.photos/290/50'),
                  ContactTile(
                      name: '신디',
                      phoneNumber: '010-1000-1000',
                      profileUrl: 'https://picsum.photos/300/100'),
                  ContactTile(
                      name: '우디',
                      phoneNumber: '010-1000-1000',
                      profileUrl: 'https://picsum.photos/300/150'),
                  ContactTile(
                      name: '김세원',
                      phoneNumber: '010-1000-1000',
                      profileUrl: 'https://picsum.photos/350/150'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
