import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/componets/shoppingcart_detail.dart';
import 'package:flutter_shoppingcart/componets/shoppingcart_header.dart';
import 'package:flutter_shoppingcart/constants.dart';

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildShoppingCartAppBar(),
        body: Column(
          children: [
            ShoppingCartHeader(),
            ShoppingCartDetail(),
          ],
        ));
  }

  AppBar _buildShoppingCartAppBar() => AppBar(
        //_는 private 의미
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            print("뒤로가기 클릭 됨");
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("쇼핑 카트 클릭 됨");
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 16),
        ],
      );
}
