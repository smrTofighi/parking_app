import 'package:flutter/material.dart';
import 'package:park_app/core/styles/text_styles.dart';

class MyButtonStyle {
  static ButtonStyle blackTextButton = ButtonStyle(
    textStyle: MaterialStateProperty.all(
      MyTextStyle.buttonTextStyle,
    ),
    foregroundColor: MaterialStateProperty.all(Colors.black),
  );

  static ButtonStyle whiteTextButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all(Colors.black),
    textStyle: MaterialStateProperty.all(
      MyTextStyle.buttonTextStyle,
    ),
  );
}
