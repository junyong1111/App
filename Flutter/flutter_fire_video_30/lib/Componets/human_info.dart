import 'package:flutter/material.dart';

import '../constants.dart';

class HumanInfo extends StatefulWidget {
  @override
  State<HumanInfo> createState() => _HumanInfoState();
}

class _HumanInfoState extends State<HumanInfo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 350,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: OssSecondColor,
          ),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHumanInfoText("1.인원 감지 시각", "00:00:20"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHumanInfoText("2.감지 인원 수", " 1명"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Text _buildHumanInfoText(var text1, var text2) {
    return Text(
      "$text1 : $text2",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 23,
      ),
    );
  }
}
