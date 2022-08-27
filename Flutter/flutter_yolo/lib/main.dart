import 'package:flutter/material.dart';

import 'Pages/yolo_fire_video.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => HomePage(),
        "/Video": (context) => YoloVideo(),
      },
    );
  }
}
