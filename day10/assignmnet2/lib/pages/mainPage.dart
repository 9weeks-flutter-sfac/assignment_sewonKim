import 'package:assignmnet2/customWidgets/menuTile.dart';
import 'package:assignmnet2/pages/authorsPage.dart';
import 'package:assignmnet2/pages/secretPage.dart';
import 'package:assignmnet2/pages/uploadPage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/images/detective.png',
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Text(
                      '비밀듣는 스파이',
                      style: TextStyle(
                          fontFamily: 'neo',
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecretPage()));
                        },
                        child: MenuTile(
                            menuName: '비밀보기',
                            menuSubtitle: '비밀 염탐하기',
                            menuIcon: 'assets/images/secret.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AuthorsPage()));
                        },
                        child: MenuTile(
                            menuName: '비밀쟁이',
                            menuSubtitle: '비밀 작성자보기',
                            menuIcon: 'assets/images/spy.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UploadPage()));
                        },
                        child: MenuTile(
                            menuName: '비밀공유',
                            menuSubtitle: '비밀 작성하기',
                            menuIcon: 'assets/images/share.png')),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
