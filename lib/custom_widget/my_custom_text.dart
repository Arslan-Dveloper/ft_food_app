import 'package:flutter/material.dart';

import '../helper/constant.dart';

class MyText extends StatelessWidget {
  String? text;
  FontWeight? fontweightText;
  double? fontSizeText;

  MyText({
    required this.text,
    this.fontSizeText,
    this.fontweightText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: 'poppins',
        color: AppColor.textColor,
        fontSize: 23,
      ),
    );
  }
}
