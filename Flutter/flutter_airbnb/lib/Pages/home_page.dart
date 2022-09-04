import 'package:flutter/material.dart';
import '../componets/home/home_body.dart';
import '../componets/home/home_header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        HomeHeader(),
        HomeBody(),
      ],
    ));
  }
}
