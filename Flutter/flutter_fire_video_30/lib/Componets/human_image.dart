import 'package:flutter/material.dart';
import 'package:flutter_30/Componets/human_info.dart';

class HumanImage extends StatefulWidget {
  @override
  State<HumanImage> createState() => _HumanImageState();
}

class _HumanImageState extends State<HumanImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Image.asset("assets/images/image_1.png"),
              SizedBox(height: 10,),
              HumanInfo(),
            ],
          ),
        )
      ],
    );
  }
}

// HumanImage(),
