import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildInfo("50", "Posts"),
        _buildLine(),
        _buildInfo("30", "Likes"),
        _buildLine(),
        _buildInfo("10", "Share"),
      ],
    );
  }

  Widget _buildInfo(String count, String title) {
    return SizedBox();
  }

  Widget _buildLine() {
    return SizedBox();
  }
}
