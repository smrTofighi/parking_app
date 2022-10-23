import 'package:flutter/material.dart';
import 'package:park_app/core/styles/text_styles.dart';

import '../values/colors.dart';

class ConstantButtonStyle {
  static ButtonStyle blueTextButtonStyle = ButtonStyle(
    textStyle: MaterialStateProperty.all(
      ConstantTextStyles.buttonTextStyle,
    ),
    foregroundColor: MaterialStateProperty.all(SolidColors.themeColor),
  );
}
