// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

import 'package:assignment6/adminPage.dart';
import 'package:assignment6/optionCard.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List menulist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: InkWell(
          onDoubleTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AdminPage()));
          },
          child: Text('분식왕 이테디 주문하기'),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '주문리스트',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 50,
              child: menulist.isNotEmpty
                  ? ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: menulist.length,
                      itemBuilder: ((context, index) {
                        return Chip(
                            onDeleted: () {
                              menulist.removeAt(index);
                              setState(() {});
                            },
                            label: Text(menulist[index].toString()));
                      }),
                    )
                  : Center(
                      child: Text(
                      '주문할 메뉴가 없습니다.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )),
            ),
            SizedBox(
              height: 15,
            ),
            Text('음식',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 5,
                  crossAxisCount: 3,
                  children: [
                    InkWell(
                      onTap: () {
                        menulist.add('떡볶이');
                        setState(() {});
                      },
                      child: OptionCard(
                          menuName: '떡볶이',
                          menuImgUrl: 'assets/option_bokki.png'),
                    ),
                    InkWell(
                      onTap: () {
                        menulist.add('맥주');
                        setState(() {});
                      },
                      child: OptionCard(
                          menuName: '맥주', menuImgUrl: 'assets/option_beer.png'),
                    ),
                    InkWell(
                      onTap: () {
                        menulist.add('김밥');
                        setState(() {});
                      },
                      child: OptionCard(
                          menuName: '김밥',
                          menuImgUrl: 'assets/option_kimbap.png'),
                    ),
                    InkWell(
                      onTap: () {
                        menulist.add('오므라이스');
                        setState(() {});
                      },
                      child: OptionCard(
                          menuName: '오므라이스',
                          menuImgUrl: 'assets/option_omurice.png'),
                    ),
                    InkWell(
                      onTap: () {
                        menulist.add('돈까스');
                        setState(() {});
                      },
                      child: OptionCard(
                          menuName: '돈까스',
                          menuImgUrl: 'assets/option_pork_cutlets.png'),
                    ),
                    InkWell(
                      onTap: () {
                        menulist.add('라면');
                        setState(() {});
                      },
                      child: OptionCard(
                          menuName: '라면',
                          menuImgUrl: 'assets/option_ramen.png'),
                    ),
                    InkWell(
                      onTap: () {
                        menulist.add('우동');
                        setState(() {});
                      },
                      child: OptionCard(
                          menuName: '우동', menuImgUrl: 'assets/option_udon.png'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: menulist.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: () {
                setState(() {});
              },
              label: Text(
                '결제하기',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : null,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
