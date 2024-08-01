import 'package:flutter/material.dart';

extension AllPadding on Widget {
  Widget onlyPadding({
    double right = 0,
    double left = 0,
    double top = 0,
    double bottom = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        right: right,
        top: top,
        bottom: bottom,
        left: left,
      ),
      child: this,
    );
  }

  Widget symmetricPadding({
    double horizontal = 0,
    double vertical = 0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
      child: this,
    );
  }
}
