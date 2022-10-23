import 'package:flutter/material.dart';
import '../values/colors.dart';

class ConstantTextStyles {
  static const TextStyle hintStyle =
      TextStyle(fontSize: 14, color: SolidColors.hintTextColor);

  static const TextStyle textFieldStyle =
      TextStyle(fontSize: 14, color: SolidColors.textBlackColor);
  static const TextStyle helloBigTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );
  static const TextStyle middleTextGreyStyle = TextStyle(
    fontSize: 18,
    color: SolidColors.textGreyColor,
  );
  static const TextStyle lowTextGreyStyle = TextStyle(
    fontSize: 13,
    color: SolidColors.textGreyColor,
  );
  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 14,
  );
}
