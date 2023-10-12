import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('메뉴 추가하기'),
          ),
          ListTile(
            title: Text('메뉴 수정하기'),
          ),
          ListTile(
            title: Text('메뉴 삭제하기'),
          ),
        ],
      ),
    );
  }
}
