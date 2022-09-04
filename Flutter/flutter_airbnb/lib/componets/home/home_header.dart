import 'package:flutter/material.dart';
import 'package:flutter_aribnb/size.dart';

import 'home_header_appbar.dart';
import 'home_header_form.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: header_height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.jpeg"),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          HomeHeaderAppBar(),
          HomeHeaderForm(),
        ],
      ),
    );
  }
}
