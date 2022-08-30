import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class FireInfo extends StatefulWidget {
  @override
  State<FireInfo> createState() => _FireInfoState();
}

class _FireInfoState extends State<FireInfo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 370,
          height: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: OssSecondColor,
          ),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  _buildFireInfoText1("1.화재 감지 시각"),
                  _buildFireInfoText2("2022년 8월 24일"),
                  _buildFireInfoText2("00:00:00"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25),
                  _buildFireInfoText1("2.장소"),
                  _buildFireInfoText2("성북구 코보 레스토랑"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  _buildFireInfoText1("3.발화 장소"),
                  _buildFireInfoText2("1층 로비 CCTV"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Text _buildFireInfoText1(var text) {
    return Text(
      "$text",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }

  Text _buildFireInfoText2(var text) => Text(
        "    • $text",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      );
}
