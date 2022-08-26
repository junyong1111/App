import 'package:flutter/material.dart';
import 'package:validators/validators.dart';
import '../size.dart';
import 'custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          CustomFormField(
            text: "Email",
            mValid: (value) {
              if (value == null || value.isEmpty) {
                return "Press Enter Text";
              } else if (!isEmail(value)) {
                return "이메일 형식이 아닙니다.";
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: medium_gap),
          CustomFormField(
            text: "Password",
            mValid: (value) {
              if (value == null || value.isEmpty) {
                return "Press Enter Text";
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
                // Navigator.pushNamed(context, "/home");
                // 스택구조로 계속 쌓이는 형식
              }
            },
            child: Text(
              "Login",
            ),
          )
        ],
      ),
    );
  }
}
