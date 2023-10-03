// ignore_for_file: prefer_const_constructors

import 'package:assignment1/page/contact_detail_page.dart';
import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  const ContactTile(
      {super.key,
      required this.name,
      required this.imgUrl,
      required this.phoneNumber});
  final String name;
  final String imgUrl;
  final String phoneNumber;

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
              imgUrl: imgUrl,
            ),
          ),
        );
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      title: Text(name),
      subtitle: Text(phoneNumber),
      trailing: Icon(Icons.call),
    );
  }
}
