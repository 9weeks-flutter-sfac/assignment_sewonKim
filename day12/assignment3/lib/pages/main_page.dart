// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unused_import

import 'package:assignment3/optionCard.dart';
import 'package:assignment3/pages/admin_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  SharedPreferences? prefs;
  Dio dio = Dio();
  List<String> myMenu = [];

  Future<List<dynamic>> getData() async {
    var res = await dio
        .get('http://52.79.115.43:8090/api/collections/options/records');
    if (res.statusCode == 200) {
      return res.data["items"];
    }
    return [];
  }

  initPreferences() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs != null) {
      var myList = prefs!.getStringList('myMenuList');
      myMenu = myList ?? [];
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    initPreferences();
  }

  @override
  Widget build(BuildContext context) {
    getData();
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
              child: FutureBuilder(
                  future: getData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return GridView.builder(
                        itemCount: snapshot.data?.length ?? 0,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                        ),
                        itemBuilder: ((context, index) {
                          return OptionCard(
                            imageUrl: snapshot.data![index]["imageUrl"],
                            foodName: snapshot.data![index]["menu"],
                            onTap: () {
                              if (prefs != null) {
                                prefs!.setStringList('myMenuList', myMenu);
                              }
                              myMenu.add(snapshot.data![index]["menu"]);
                              setState(() {});
                            },
                          );
                        }),
                      );
                    }
                    return CircularProgressIndicator();
                  }),
            )
          ],
        ));
  }
}
