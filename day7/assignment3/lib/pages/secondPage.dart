// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

final imageUrl = [
  "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/33053/dog-young-dog-small-dog-maltese.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/2664417/pexels-photo-2664417.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/10361796/pexels-photo-10361796.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/9409823/pexels-photo-9409823.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
];

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    var currentIndex = 0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          '7일차 과제 2번',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: CarouselSlider(
            items: imageUrl
                .map((e) => Container(
                      child: ClipRRect(
                        child: Image(
                          width: 200,
                          height: 200,
                          image: NetworkImage(e.toString()),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 2500))),
      ),
    );
  }
}
