// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:assignment3/optionCard.dart';
import 'package:assignment3/pages/admin_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List myMenu = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: myMenu.isNotEmpty
            ? FloatingActionButton.extended(
                label: Text('결제하기'),
                onPressed: () {},
              )
            : null,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: GestureDetector(
            child: Text('분식왕 이테디 주문하기'),
            onDoubleTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AdminPage()));
            },
          ),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '주문리스트',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 50,
              child: myMenu.isNotEmpty
                  ? ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myMenu.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Chip(
                            label: Text(myMenu[index]),
                            onDeleted: () {
                              myMenu.removeAt(index);
                              setState(() {});
                            },
                          ),
                        );
                      })
                  : Center(
                      child: Text('주문할 음식이 없습니다.'),
                    ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '음식',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                children: [
                  InkWell(
                    onTap: () {
                      myMenu.add('떡볶이');
                      setState(() {});
                    },
                    child: OptionCard(
                        foodName: '떡볶이',
                        imageUrl: 'assets/images/option_bokki.png'),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('맥주');
                      setState(() {});
                    },
                    child: OptionCard(
                        foodName: '맥주',
                        imageUrl: 'assets/images/option_beer.png'),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('김밥');
                      setState(() {});
                    },
                    child: OptionCard(
                        foodName: '김밥',
                        imageUrl: 'assets/images/option_kimbap.png'),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('오무라이스');
                      setState(() {});
                    },
                    child: OptionCard(
                        foodName: '오무라이스',
                        imageUrl: 'assets/images/option_omurice.png'),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('돈까스');
                      setState(() {});
                    },
                    child: OptionCard(
                        foodName: '돈까스',
                        imageUrl: 'assets/images/option_pork_cutlets.png'),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('라면');
                      setState(() {});
                    },
                    child: OptionCard(
                        foodName: '라면',
                        imageUrl: 'assets/images/option_ramen.png'),
                  ),
                  InkWell(
                    onTap: () {
                      myMenu.add('우동');
                      setState(() {});
                    },
                    child: OptionCard(
                        foodName: '우동',
                        imageUrl: 'assets/images/option_udon.png'),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
