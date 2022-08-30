import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_30/Pages/human_page.dart';
import 'package:flutter_30/theme.dart';

import 'Pages/fire_video_page.dart';
import 'Pages/home_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: '/HumanVideo',
      routes: {
        '/home': (context) => HomePage(),
        '/FireVideo': (context) => FireVideoPage(),
        '/HumanVideo': (context) => HumanPage(),
      },
    );
  }
}
