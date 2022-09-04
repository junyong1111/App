import 'package:flutter/material.dart';
import 'package:flutter_aribnb/styles.dart';

class CommonFromField extends StatelessWidget {
  final prefixText;
  final hintText;

  const CommonFromField({required this.prefixText, required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom, //아래쪽으로 내려줘야 한다.
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.only(top: 30, left: 20, bottom: 10), //공간을 만들어주고
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                )),
          ),
        ),
        Positioned(
          top: 8,
          left: 20,
          child: Text(
            prefixText,
            style: overLine(mColor: Colors.black),
          ),
        )
      ],
    );
  }
}
