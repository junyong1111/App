import 'package:flutter/material.dart';
import 'package:flutter_aribnb/size.dart';

class HomeHeaderForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: Alignment(-0.6, 0), // -1.0 ~ 1.0의 범위를 가진다.
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Column(
              children: [
                _buildFormTitle(), // 위젯 제목 영역
                _buildFormField(), // 텍스트 입력 양식 영역
                _buildFormSubmit(), // 전송 영역
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return SizedBox();
  }

  Widget _buildFormField() {
    return SizedBox();
  }

  Widget _buildFormSubmit() {
    return SizedBox();
  }
}
