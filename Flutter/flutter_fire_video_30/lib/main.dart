import 'package:flutter/material.dart';
import 'package:flutter_30/theme.dart';

import 'Pages/fire_video_page.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/FireVideo': (context) => FireVideoPage(),
      },
    );
  }
}
