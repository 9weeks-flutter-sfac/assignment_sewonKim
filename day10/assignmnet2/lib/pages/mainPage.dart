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
      backgroundColor: Colors.blue[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage:
                            AssetImage('assets/images/secretLogo.png'),
                        radius: 55,
                      ),
                    ),
                    Text(
                      '도청하는 스파이',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AuthorsPage()));
                        },
                        child: MenuTile(
                            menuName: '비밀쟁이',
                            menuSubtitle: '스파이보기',
                            menuIcon: 'assets/images/detective.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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
