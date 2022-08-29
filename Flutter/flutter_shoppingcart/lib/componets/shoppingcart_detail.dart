import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';

class ShoppingCartDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            _buildDetailNameAndPrice(),
            _buildDetailRatingAndReviewCount(),
            _buildDetailColorOptions(),
            _buildDetaiButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      // 밑에 붙을 리뷰와 거리를 유지하기 위해
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // /Row에 들어있는 원소들이 끝에서 끝으로 정렬
        children: [
          Text(
            "Urban Soft AL 10.0",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "\$688",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDetailRatingAndReviewCount() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Spacer(),
          Text("review"),
          Text(
            "(256)",
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }

  Widget _buildDetailColorOptions() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Color Otions"),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              _buildDetailIcons(Colors.black),
              _buildDetailIcons(Colors.green),
              _buildDetailIcons(Colors.orange),
              _buildDetailIcons(Colors.grey),
              _buildDetailIcons(Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailIcons(var Color) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white, // 데코레이션이 있으면 컨테이너에서 색을 줄 수 없다.
              border: Border.all(),
              // borderRadius: BorderRadius.circular(25) // 원을 만드는 1번 방법 컨테이너의 절반 크기로 하면 원이 만들어짐),
              shape: BoxShape
                  .circle, // 원을 만드는 2번 방법 위 방법은 약간의 라운드를 줄 때 사용하고 원을 사용할 때는 이와같은 방법이 좋다.
            ),
          ),
          Positioned(
            // Stack에서 위에 올라는 위젯을 포지션으로 감싸줘야한다 (규칙임)
            left: 5, // 중앙에 오게 하는 방법 -> (외부 크기 - 내부 크기) /2
            top: 5,
            child: ClipOval(
              // 원을 만드는 3번 방법 -> 컨테이너처럼 shape 속성이 없는 위젯을 원으로 만들 때 사용하기 좋다.
              child: Container(width: 40, height: 40, color: Color),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDetaiButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: Text("장바구니에 담으시겠습니까?"),
            actions: [
              CupertinoDialogAction(
                child: Text("확인"),
                onPressed: () {
                  print("장바구니에 담김");
                  Navigator.pop(context);
                },
              )
            ],
          ),
        );
      },
      child: Text(
        "Add to Cart",
        style: TextStyle(color: Colors.white),
      ),
      style: TextButton.styleFrom(
        backgroundColor: kAccentColor,
        minimumSize: Size(300, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
