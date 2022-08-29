import 'package:flutter/material.dart';
import 'package:flutter_30/Componets/fire_video.dart';
import 'package:flutter_30/constants.dart';

import '../Componets/fire_info.dart';

class FireVideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildFirePageAppBar(context),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FireVideo(),
          ),
          Text(
            "화재 발생 상세 정보",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: FireInfo(),
          ),
        ],
      ),
    );
  }

  AppBar _buildFirePageAppBar(var context) => AppBar(
        backgroundColor: OssAccentColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.home_filled,
            size: 35,
          ),
        ),
        title: Text(
          "화재 발생 정보",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      );
}
