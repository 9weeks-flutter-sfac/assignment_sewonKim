// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class MusicTile extends StatelessWidget {
  const MusicTile(
      {super.key,
      required this.imgCover,
      required this.songName,
      required this.artist,
      required this.songPlayTime});
  final String imgCover;
  final String songName;
  final String artist;
  final String songPlayTime;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        songName,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: Colors.white,
            size: 15,
          ),
          SizedBox(
            width: 7,
          ),
          Flexible(
            child: Text(
              artist,
              style: TextStyle(fontSize: 15, color: Colors.grey),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            width: 7,
          ),
          Icon(
            Icons.circle,
            color: Colors.grey,
            size: 5,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            songPlayTime,
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Image.asset(imgCover),
      ),
      trailing: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
    );
  }
}
