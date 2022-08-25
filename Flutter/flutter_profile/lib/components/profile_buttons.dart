import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround, // 버튼과의 거리를 유지
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }

  Widget _buildFollowButton() {
    return InkWell(
      onTap: () {
        //버튼을 클릭하면 아래 익명함수가 실행 됨
        print("Follow 클릭 됨");
      },
      child: Container(
        alignment: Alignment.center, //글자를 가운데로 옮김
        width: 150,
        height: 45,
        child: Text(
          'Follow',
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildMessageButton() {
    return Container(
      alignment: Alignment.center, //글자를 가운데로 옮김
      width: 150,
      height: 45,
      child: Text(
        'Message',
        style: TextStyle(color: Colors.black),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all()),
    );
  }
}
