import 'package:flutter/material.dart';
import 'package:park_app/constant/styles/text_styles.dart';

import '../colors.dart';

class ConstantButtonStyle {
  static ButtonStyle blueTextButtonStyle = ButtonStyle(
    textStyle: MaterialStateProperty.all(
      ConstantTextStyles.buttonTextStyle,
    ),
    foregroundColor: MaterialStateProperty.all(SolidColors.themeColor),
  );
}
