import 'package:flutter/material.dart';
import 'package:flutter_30/constants.dart';

import '../Componets/test_video.dart';

class LivePage extends StatefulWidget {
  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildLiveAppBar(),
      body: ListView(
        children: [
          TestVideoEx(),
        ],
      ),
    );
  }

  _buildLiveAppBar() => AppBar(
        backgroundColor: OssAccentColor,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              print("back");
            },
            icon: Icon(
              Icons.home_filled,
              size: 35,
            )),
        title: Text(
          "실시간 스트리밍",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      );
}
