// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:assignment/MusicTile.dart';
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
          title: Text(
            '아워리스트',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 20, 20, 20),
          shadowColor: Colors.white,
          elevation: 0.5,
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.airplay)),
            Padding(
                padding: EdgeInsets.only(right: 10), child: Icon(Icons.search)),
          ],
        ),
        body: Container(
          color: Color.fromARGB(255, 25, 25, 25),
          child: ListView(
            children: [
              MusicTile(
                  imgCover: 'assets/images/music_come_with_me.png',
                  songName: 'Come with me',
                  artist: 'Surface 및 salem ilese',
                  songPlayTime: '3:00'),
              MusicTile(
                  imgCover: 'assets/images/music_good_day.png',
                  songName: 'Good day',
                  artist: 'Surface',
                  songPlayTime: '3:00'),
              MusicTile(
                  imgCover: 'assets/images/music_honesty.png',
                  songName: 'Honesty',
                  artist: 'Pink Sweat\$',
                  songPlayTime: '3:09'),
              MusicTile(
                  imgCover: 'assets/images/music_i_wish_i_missed_my_ex.png',
                  songName: 'I Wish I Missed My Ex',
                  artist: '마할리아 버크마',
                  songPlayTime: '3:24'),
              MusicTile(
                  imgCover: 'assets/images/music_plastic_plants.png',
                  songName: 'Plastic Plants',
                  artist: '마할리아 버크마',
                  songPlayTime: '3:20'),
              MusicTile(
                  imgCover: 'assets/images/music_sucker_for_you.png',
                  songName: 'Sucker for you',
                  artist: '맷 테리',
                  songPlayTime: '3:24'),
              MusicTile(
                  imgCover:
                      'assets/images/music_summer_is_for_falling_in_love.png',
                  songName: 'Summer is for falling in love',
                  artist: 'Sarah Kang & Eye Love Brandon',
                  songPlayTime: '3:00'),
              MusicTile(
                  imgCover: 'assets/images/music_these_days.png',
                  songName:
                      'These days(feat. Jess Glynne, Macklemore & Dan Caplen)',
                  artist: 'Rudimental',
                  songPlayTime: '3:00'),
              MusicTile(
                  imgCover: 'assets/images/music_you_make_me.png',
                  songName: 'You Make Me',
                  artist: 'DAY6',
                  songPlayTime: '3:00'),
              MusicTile(
                  imgCover: 'assets/images/music_zombie_pop.png',
                  songName: 'Zombie Pop',
                  artist: 'DRP IAN',
                  songPlayTime: '3:00'),
            ],
          ),
        ),
        bottomSheet: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Color.fromARGB(255, 51, 51, 51),
              height: 75,
              child: ListTile(
                title: Text(
                  'You make me',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                subtitle: Text(
                  'DAY6',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.asset('assets/images/music_you_make_me.png'),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              alignment: Alignment.centerLeft,
              child: Container(
                width: 50,
                color: Colors.red,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          backgroundColor: Color.fromARGB(255, 51, 51, 51),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: '둘러보기'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music), label: '보관함')
          ],
        ),
      ),
    );
  }
}
