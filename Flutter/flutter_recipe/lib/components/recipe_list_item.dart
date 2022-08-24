// 커스텀 위젯 만들기 //
import 'package:flutter/material.dart';
// android 앱을 만들기 위해서 material import

class RecipelistItem extends StatelessWidget {
  // final은 값을 초기화 시켜줘야 한다
  // 이 때 생성자를 이용하여 초기화 가능
  // option + enter -> Create constructor for final fields 클릭
  final String imagename;
  final String title;

  const RecipelistItem(this.imagename, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/$imagename.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Have you ever made your own $title? Once you 've tried a homemade $title, you'll never go back.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
