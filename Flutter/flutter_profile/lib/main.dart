import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_header.dart';
import 'package:flutter_profile/pages/ProfilePage.dart';
import 'package:flutter_profile/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}
