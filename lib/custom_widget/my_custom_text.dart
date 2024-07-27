import 'package:flutter/material.dart';

import '../helper/constant.dart';

class MyText extends StatelessWidget {
  String? text;
  FontWeight? fontweightText;
  double? fontSizeText;
  Color?textColor;

  MyText({
    required this.text,
    this.fontSizeText,
    this.fontweightText,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(
        fontWeight: fontweightText ?? FontWeight.w500,
        fontFamily: 'poppins',
        color: textColor??AppColor.textColor,
        fontSize: fontSizeText ?? 23,
      ),
    );
  }
}
