import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_30/Componets/video_play.dart';

class FireVideo extends StatefulWidget {
  @override
  State<FireVideo> createState() => _FireVideoState();
}

class _FireVideoState extends State<FireVideo> {
  @override
  Widget build(BuildContext context) {
    _buildDb(); //--- 최초 1회 실행
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
              child: VideoPlayerScreen()),
        ),
        // 일단 경로를 넣어줘야 될듯
      ],
    );
  }

  Future<void> _buildDb() async {
    var db = FirebaseFirestore.instance;
    var doc_ref = await db.collection("Video").doc('FIRE2022년 08월 30일_6').get();
    print("====================================================");
    print(doc_ref.data());
  }
}
