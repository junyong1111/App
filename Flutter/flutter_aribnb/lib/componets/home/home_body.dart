import 'package:flutter/material.dart';
import 'package:flutter_aribnb/componets/common/home_body_banner.dart';
import 'package:flutter_aribnb/componets/common/home_body_popular.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeBodyBanner(),
        HomeBodyPopular(),
      ],
    );
  }
}
