// ignore_for_file: prefer_const_constructors

import 'package:assignment4/Pages/contactDetailPage.dart';
import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  const ContactTile(
      {super.key,
      required this.name,
      required this.phoneNumber,
      required this.profileUrl});

  final String name;
  final String phoneNumber;
  final String profileUrl;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ContactDetailPage(
                    name: name,
                    phoneNumber: phoneNumber,
                    profileUrl: profileUrl)));
      },
      title: Text(name),
      subtitle: Text(phoneNumber),
      leading: Padding(
        //Padding으로 아이콘만 간격을 띄워줄 수 있다.
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(profileUrl),
        ),
      ),
      trailing: Icon(Icons.call),
    );
  }
}
