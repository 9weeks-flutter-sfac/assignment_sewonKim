import 'package:assignment4/widget/contactTile.dart';
import 'package:flutter/material.dart';

class ContactDetailPage extends StatelessWidget {
  const ContactDetailPage(
      {super.key,
      required this.name,
      required this.phoneNumber,
      required this.profileUrl});

  final String name;
  final String phoneNumber;
  final String profileUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Image(
            image: NetworkImage(profileUrl),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          ContactTile(
              name: name, phoneNumber: phoneNumber, profileUrl: profileUrl)
        ],
      ),
    );
  }
}
