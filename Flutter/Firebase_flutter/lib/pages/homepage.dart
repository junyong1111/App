import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_flutter/pages/realtime_streaming.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/fire");
          },
          child: Text("화재 발생 정보"),
        ));
  }

  AppBar buildAppBar() => AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text(
          "Booriay!",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      );
}
