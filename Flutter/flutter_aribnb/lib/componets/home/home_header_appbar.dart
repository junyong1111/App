import 'package:flutter/material.dart';
import 'package:flutter_aribnb/size.dart';

class HomeHeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }
}

Widget _buildAppBarLogo() {
  return SizedBox();
}

Widget _buildAppBarMenu() {
  return SizedBox();
}
