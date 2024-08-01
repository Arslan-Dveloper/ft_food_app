import 'package:flutter/material.dart';

import '../helper/constant.dart';

class MyText extends StatelessWidget {
  String? text;
  FontWeight? fontweightText;
  double? fontSizeText;
  Color? textColor;
  TextAlign? textAlignText;
  String? fontFaimlyText;

  MyText({
    required this.text,
    this.fontSizeText,
    this.fontweightText,
    this.textColor,
    this.textAlignText,
    this.fontFaimlyText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(
        fontWeight: fontweightText ?? FontWeight.w500,
        fontFamily: fontFaimlyText ?? 'poppins',
        color: textColor ?? AppColor.textColor,
        fontSize: fontSizeText ?? 23,
      ),
      textAlign: textAlignText,
    );
  }
}
