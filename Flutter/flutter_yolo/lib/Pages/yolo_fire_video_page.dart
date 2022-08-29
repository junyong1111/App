import 'package:flutter/material.dart';

import '../Components/yolo_video_fire.dart';

class YoloVideoFire extends StatefulWidget {
  @override
  State<YoloVideoFire> createState() => _YoloVideoState();
}

class _YoloVideoState extends State<YoloVideoFire> {
  @override
  Widget build(BuildContext context) {
    return VideoPlayerScreen("화재 발생 영상");
  }

  AppBar _buildFireAppBar() => AppBar(
        backgroundColor: Color(0xffFF8243),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.home_filled,
              size: 40,
            )),
        centerTitle: true,
        title: Text(
          "화재 발생 정보",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
