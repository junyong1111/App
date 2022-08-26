import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/custom_form.dart';
import '../components/custom_text_form_field.dart';
import '../components/logo.dart';
import '../size.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Login"),
            SizedBox(height: large_gap),
            CustomForm()
          ],
        ),
      ),
    );
  }
}
