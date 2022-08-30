import 'package:flutter/material.dart';
import 'package:flutter_30/Componets/video_play.dart';
import 'package:flutter_30/constants.dart';

import '../Componets/human_info.dart';

class HumanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildHumanPageAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: Text(
              "1. 1층 로비 (CCTV1)",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          ClipRRect(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: VideoPlayerScreen(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: HumanInfo(),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: VideoPlayerScreen(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: HumanInfo(),
          ),
        ],
      ),
    );
  }

  AppBar _buildHumanPageAppBar() => AppBar(
        backgroundColor: OssAccentColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            print("back");
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 30,
          ),
        ),
        title: Text(
          "인원 감지 내역",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      );
}
