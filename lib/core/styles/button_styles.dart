import 'package:flutter/material.dart';
import 'package:park_app/core/styles/text_styles.dart';

import '../values/colors.dart';

class MyButtonStyle {
  static ButtonStyle blueTextButton = ButtonStyle(
    textStyle: MaterialStateProperty.all(
      MyTextStyle.buttonTextStyle,
    ),
    foregroundColor: MaterialStateProperty.all(SolidColors.primery),
  );

  static ButtonStyle whiteTextButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all(Colors.white),
  );
}
