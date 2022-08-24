// 커스텀 위젯 만들기 //
import 'package:flutter/material.dart';
// android 앱을 만들기 위해서 material import

class RecipeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        "Recipes",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
