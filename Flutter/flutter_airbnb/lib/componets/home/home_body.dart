import 'package:flutter/material.dart';

import 'home_body_banner.dart';
import 'home_body_popular.dart';

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
