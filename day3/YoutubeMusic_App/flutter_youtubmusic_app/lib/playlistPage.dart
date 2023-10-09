// ignore_for_file: file_names

import 'package:YoutubeMusic_App/musicTile.dart';
import 'package:flutter/material.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        shape: Border(bottom: BorderSide(width: 0.5, color: Colors.white24)),
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        title: Text(
          '아워리스트',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        titleSpacing: 5,
        actions: [
          Icon(Icons.airplay),
          SizedBox(
            width: 17,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: ListView(
        children: [
          MusicTile(
              musicName: 'Come With Me',
              artistName: 'Surfaces 및 Salem ilese',
              musicDuration: '3:00',
              musicCoverUrl: 'assets/music_come_with_me.png'),
          MusicTile(
              musicName: 'Good Day',
              artistName: 'Surfaces',
              musicDuration: '3:00',
              musicCoverUrl: 'assets/music_good_day.png'),
          MusicTile(
              musicName: 'Honesty',
              artistName: 'Pink Sweat\$',
              musicDuration: '3:09',
              musicCoverUrl: 'assets/music_honesty.png'),
          MusicTile(
              musicName: 'I Wish I Missed my Ex',
              artistName: '마할리아 버크마',
              musicDuration: '3:24',
              musicCoverUrl: 'assets/music_i_wish_i_missed_my_ex.png'),
          MusicTile(
              musicName: 'Plastic Plants',
              artistName: '마할리아 버크마',
              musicDuration: '3:20',
              musicCoverUrl: 'assets/music_plastic_plants.png'),
          MusicTile(
              musicName: 'Sucker for you',
              artistName: '맷 테리',
              musicDuration: '3:24',
              musicCoverUrl: 'assets/music_sucker_for_you.png'),
          MusicTile(
              musicName: 'Summer is fot Falling in love',
              artistName: 'Sarah Kang & Eye Love Brandon',
              musicDuration: '3:24',
              musicCoverUrl: 'assets/music_summer_is_for_falling_in_love.png'),
          MusicTile(
              musicName:
                  'These days(feat. Jess Glynne, Macklemore & Dan Caplen)',
              artistName: 'Rudimental',
              musicDuration: '3:00',
              musicCoverUrl: 'assets/music_these_days.png'),
          MusicTile(
              musicName: 'You Make Me',
              artistName: 'Day6',
              musicDuration: '3:14',
              musicCoverUrl: 'assets/music_you_make_me.png'),
          MusicTile(
              musicName: 'Zombie Pop',
              artistName: 'DRP IAN',
              musicDuration: '3:34',
              musicCoverUrl: 'assets/music_zombie_pop.png'),
        ],
      ),
      bottomSheet: Container(
        height: 75,
        decoration: BoxDecoration(color: Colors.black12),
        child: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(image: AssetImage('assets/music_you_make_me.png')),
            ),
            title: Text(
              'You Make Me',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontSize: 17),
            ),
            subtitle: Row(
              children: [
                Flexible(
                  child: Text(
                    'Day6',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            trailing: Wrap(
              children: [
                Icon(Icons.play_arrow),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.skip_next)
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '둘러보기',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: '보관함',
          ),
        ],
      ),
    );
  }
}
