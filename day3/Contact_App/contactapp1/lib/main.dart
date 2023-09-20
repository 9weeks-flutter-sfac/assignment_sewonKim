// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:contactapp1/ShoppingItem.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20), child: Icon(Icons.search))
          ],
        ),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.credit_card), label: 'Pay'),
              BottomNavigationBarItem(icon: Icon(Icons.coffee), label: 'Order'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_mall), label: 'Shop'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz), label: 'Other')
            ],
          ),
          decoration: BoxDecoration(boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
            )
          ]),
        ),
        bottomSheet: Container(
          height: 80,
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '주문할 매장을 선택해주세요',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(Icons.expand_more, color: Colors.white)
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 15, bottom: 20),
                child: Text(
                  'NEW',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: ShoppingItem(
                itemName: '골든 미모사 그린티',
                itemEnglishName: 'Golden Mimosa Green Tea',
                itemPrice: 6100,
                itemImgUrl:
                    'https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[4004000000059]_20210415141656185.jpg',
              ),
            ),
            Container(
              child: ShoppingItem(
                itemName: '블랙 햅쌀 고봉 라떼',
                itemEnglishName: 'Black Rice Latte',
                itemPrice: 6300,
                itemImgUrl:
                    'https://image.istarbucks.co.kr/upload/store/skuimg/2020/09/[9200000001301]_20200921171639786.jpg',
              ),
            ),
            Container(
              child: ShoppingItem(
                itemName: '아이스 블랙 햅쌀 고봉 라떼',
                itemEnglishName: 'Ice Black Rice Latte',
                itemPrice: 6300,
                itemImgUrl:
                    'https://image.istarbucks.co.kr/upload/store/skuimg/2020/09/[9200000001302]_20200921171804533.jpg',
              ),
            ),
            Container(
              child: ShoppingItem(
                itemName: '스타벅스 튜메릭 라떼',
                itemEnglishName: 'Starbucks Tumeric Latte',
                itemPrice: 6100,
                itemImgUrl:
                    'https://image.istarbucks.co.kr/upload/store/skuimg/2023/08/[9200000002259]_20230811084223350.jpg',
              ),
            ),
            Container(
              child: ShoppingItem(
                itemName: '아이스 스타벅스 튜메릭 라떼',
                itemEnglishName: 'Ice Starbuck Tumeric Latte',
                itemPrice: 6300,
                itemImgUrl:
                    'https://image.istarbucks.co.kr/upload/store/skuimg/2023/08/[9200000002262]_20230811084451030.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
