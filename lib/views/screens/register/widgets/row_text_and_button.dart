import 'package:flutter/material.dart';
import 'package:park_app/constant/styles/button_styles.dart';
import '../../../../constant/styles/text_styles.dart';

Row rowTextAndButton(
    {required String text,
    required Function() onPressed,
    required String textButton}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text,
        style: ConstantTextStyles.lowTextGreyStyle,
      ),
      TextButton(
        onPressed: onPressed,
        style: ConstantButtonStyle.blueTextButtonStyle,
        child: Text(textButton),
      )
    ],
  );
}
