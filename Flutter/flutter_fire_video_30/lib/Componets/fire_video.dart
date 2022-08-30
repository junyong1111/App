import 'package:flutter/material.dart';
import 'package:flutter_30/Componets/video_play.dart';

class FireVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "화재 발생 영상",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: VideoPlayerScreen(),
          ),
        ),
        // 일단 경로를 넣어줘야 될듯
      ],
    );
  }
}
