import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  final String title;

  const Logo(this.title);
  @override
  Widget build(BuildContext context) {
    return Column(
      // 기본적으로 위치가 가운데 정렬이며 Listview는 왼쪽 정렬이다.
      children: [
        SvgPicture.asset(
          "assets/images/logo.svg",
          height: 70,
          width: 70,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
