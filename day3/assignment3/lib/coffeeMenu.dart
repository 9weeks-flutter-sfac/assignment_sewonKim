import 'package:assignment3/drinkTile.dart';
import 'package:flutter/material.dart';

class CoffeeMenu extends StatelessWidget {
  const CoffeeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NEW',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: [
                  DrinkTile(
                      menuName: '골든 미모사 그린 티',
                      menuEnName: 'Golden Mimosa Green Tea',
                      menuPrice: '6100',
                      menuPicUrl: 'assets/item_drink1.jpeg'),
                  SizedBox(
                    height: 15,
                  ),
                  DrinkTile(
                      menuName: '블랙 햅쌀 고봉 라떼',
                      menuEnName: 'Black Rice Latte',
                      menuPrice: '6300',
                      menuPicUrl: 'assets/item_drink2.jpeg'),
                  SizedBox(
                    height: 15,
                  ),
                  DrinkTile(
                      menuName: '아이스 블랙 햅쌀 고봉 라떼',
                      menuEnName: 'Ice Black Rice Latte',
                      menuPrice: '6300',
                      menuPicUrl: 'assets/item_drink3.jpeg'),
                  SizedBox(
                    height: 15,
                  ),
                  DrinkTile(
                      menuName: '스타벅스 튜메릭 라떼',
                      menuEnName: 'Starbuck Tumeric Latte',
                      menuPrice: '6100',
                      menuPicUrl: 'assets/item_drink4.jpeg'),
                  SizedBox(
                    height: 15,
                  ),
                  DrinkTile(
                      menuName: '아이스 스타벅스 튜메릭 라떼',
                      menuEnName: 'Ice Starbuck Tumeric Latte',
                      menuPrice: '6100',
                      menuPicUrl: 'assets/item_drink5.jpeg'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Pay'),
          BottomNavigationBarItem(icon: Icon(Icons.local_cafe), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Other'),
        ],
        currentIndex: 2,
        selectedItemColor: Colors.green,
      ),
      bottomSheet: Container(
        alignment: Alignment.center,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: ListTile(
          title: Text(
            '주문할 매장을 선택해주세요.',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          trailing: Icon(
            Icons.arrow_drop_down_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
