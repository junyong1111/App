import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        _buildHeaderAvatar(),
        SizedBox(
          width: 20,
        ),
        _buildHeaderProfile(),
      ],
    );
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "박준용",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "프로그래머/학생",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "데이터프로그래밍",
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 120,
      child: CircleAvatar(
        backgroundImage: AssetImage(
          "assets/images/avatar.png",
        ),
      ),
    );
  }
}
