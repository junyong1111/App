// 커스텀 위젯 만들기 //
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe/components/recipe_menu.dart';
import 'package:flutter_recipe/components/recipe_title.dart';
import 'package:flutter_recipe/components/recipe_list_item.dart';
// android 앱을 만들기 위해서 material import

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildRecipeAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              RecipeTitle(),
              RecipeMenu(),
              RecipelistItem("coffee", "Made Coffee"),
              RecipelistItem("burger", "Made Burger"),
              RecipelistItem("pizza", "Made Pizza")
            ],
          ),
        ));
  }

  AppBar _buildRecipeAppBar() => AppBar(
        backgroundColor: Colors.white, // AppBar 색상
        elevation: 1.0, // AppBar 하단 그림자 조절
        actions: [
          Icon(
            CupertinoIcons.search, // 아이콘
            color: Colors.black, // 색상
          ),
          SizedBox(width: 15), //아이콘끼리 간격
          Icon(
            CupertinoIcons.heart,
            color: Colors.redAccent,
          ),
        ],
      );
}
