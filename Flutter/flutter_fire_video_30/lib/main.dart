import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_30/theme.dart';

import 'Pages/fire_video_page.dart';
import 'Pages/home_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  var db = FirebaseFirestore.instance;
  var doc_ref = await db.collection("Video").doc('FIRE2022년 08월 30일_6').get();
  print(doc_ref.data());
  // 정해진 ID값에 레퍼런스를 가져옴
  // 데이터 접근 방법 doc_ref.data()['Field_name'];

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
