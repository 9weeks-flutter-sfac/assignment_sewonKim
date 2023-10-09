import 'package:flutter/material.dart';

class MusicTile extends StatelessWidget {
  const MusicTile(
      {super.key,
      required this.musicName,
      required this.artistName,
      required this.musicDuration,
      required this.musicCoverUrl});

  final String musicName;
  final String artistName;
  final String musicDuration;
  final String musicCoverUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 10),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image(image: AssetImage(musicCoverUrl)),
        ),
        title: Text(
          musicName,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(fontSize: 17),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.check_circle,
              size: 15,
              color: Colors.grey,
            ),
            SizedBox(
              width: 7,
            ),
            Flexible(
              child: Text(
                artistName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Icon(
              Icons.circle,
              size: 5,
            ),
            SizedBox(
              width: 7,
            ),
            Text(musicDuration)
          ],
        ),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
