// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ShoppingItem extends StatelessWidget {
  const ShoppingItem(
      {super.key,
      required this.itemName,
      required this.itemEnglishName,
      required this.itemPrice,
      required this.itemImgUrl});
  final String itemName;
  final String itemEnglishName;
  final int itemPrice;
  final String itemImgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(itemImgUrl),
                radius: 45,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 20, bottom: 25),
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        itemName,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      itemEnglishName,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                          color: Colors.grey),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        '${itemPrice}원',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
