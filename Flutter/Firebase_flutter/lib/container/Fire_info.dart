import 'package:flutter/material.dart';

class FireInfo extends StatefulWidget {
  const FireInfo({Key? key}) : super(key: key);

  @override
  State<FireInfo> createState() => _FireInfoState();
}

class _FireInfoState extends State<FireInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Color(0x4fFF8243),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "  1. 화재 감지 시간                                             ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "     - 2022년 8월 24일",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              // SizedBox(height: 20),
              Spacer(),
              Text(
                "  2. 주소",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "     - 성북구 코보 레스토랑",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),

              Spacer(),
              Text(
                "  3. 발화 장소",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "     - 1층 로비 CCTV 1",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
