import 'package:flutter/material.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = ["images/p1.jpeg", "images/p2.jpeg", "images/p3.jpeg"];

  HomeBodyPopularItem({required this.id});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPopularItemImage(),
        _buildPopularItemStar(),
        _buildPopularItemCommnet(),
        _buildPopularItemUserInfo(),
      ],
    );
  }

  Widget _buildPopularItemImage() {
    return SizedBox();
  }

  Widget _buildPopularItemStar() {
    return SizedBox();
  }

  Widget _buildPopularItemCommnet() {
    return SizedBox();
  }

  Widget _buildPopularItemUserInfo() {
    return SizedBox();
  }
}
