import 'package:flutter/material.dart';
import '../values/colors.dart';

class MyTextStyle {
  static const TextStyle hintStyle =
      TextStyle(fontSize: 14, color: SolidColors.hintText);

  static const TextStyle textFieldStyle =
      TextStyle(fontSize: 14, color: SolidColors.textBlack);
  static const TextStyle helloBigTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );
  static const TextStyle middleTextGreyStyle = TextStyle(
    fontSize: 18,
    color: SolidColors.textGrey,
  );
  static const TextStyle seeAllText =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
  static const TextStyle lowTextGreyStyle = TextStyle(
    fontSize: 13,
    color: Color(0xffa8acaf),
  );
  static const TextStyle buttonTextStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
}
