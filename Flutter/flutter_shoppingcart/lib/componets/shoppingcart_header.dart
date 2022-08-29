import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';

class ShoppingCartHeader extends StatefulWidget {
  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int SeletcedID = 0;
  List<String> SeletedPicID = [
    "assets/images/p1.jpeg",
    "assets/images/p2.jpeg",
    "assets/images/p3.jpeg",
    "assets/images/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderPic(),
        _buildHeaderSelector(),
      ],
    );
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 5 / 3,
        child: Image.asset(
          SeletedPicID[SeletcedID],
          fit: BoxFit.cover, // 이미지를 꽉 차게 하기위해서
        ),
      ),
    );
  }

  Widget _buildHeaderSelector() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // row의 방향은 수평방향이므로 spaceAround를 입력

        children: [
          _bulidHeaderSelectorButton(0, Icons.directions_bike),
          _bulidHeaderSelectorButton(1, Icons.motorcycle_sharp),
          _bulidHeaderSelectorButton(2, CupertinoIcons.car_detailed),
          _bulidHeaderSelectorButton(3, CupertinoIcons.airplane),
        ],
      ),
    );
  }

  Container _bulidHeaderSelectorButton(var id, var mIcon) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: id == SeletcedID ? kAccentColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: () {
          print("클릭");
        },
        icon: Icon(
          mIcon,
          size: 35,
        ),
      ),
    );
  }
}
