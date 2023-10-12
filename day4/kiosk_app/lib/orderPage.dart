// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kiosk_app/optionCard.dart';

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
        title: Text('분식왕 이테디 주문하기'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '주문리스트',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(menulist.toString()),
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          menulist = [];
          setState(() {});
        },
        label: Text(
          '초기화하기',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
