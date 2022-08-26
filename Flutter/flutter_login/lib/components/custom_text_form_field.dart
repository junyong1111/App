import 'package:flutter/material.dart';
import 'package:flutter_login/size.dart';
import 'package:validators/validators.dart';

class CustomFormField extends StatelessWidget {
  final String text;
  final mValid;

  const CustomFormField({required this.text, required this.mValid});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$text"),
        SizedBox(height: small_gap),
        TextFormField(
          validator: mValid,
          obscureText: text == "Password" ? true : false, //적히는 글자가 안보이도록
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              // 박스를 누르지 않았을 때 박스모양
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              // 박스를 눌렀을 때 박스모양
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              // 박스를 누르지 않았을 때 박스모양
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              // 박스를 누르지 않았을 때 박스모양
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
