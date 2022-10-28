import 'package:flutter/material.dart';

import '../../../../core/styles/button_styles.dart';
import '../../../../core/styles/text_styles.dart';

Row rowTextAndButton(
    {required String text,
    required Function() onPressed,
    required String textButton}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text,
        style: MyTextStyle.lowTextGreyStyle,
      ),
      TextButton(
        onPressed: onPressed,
        style: MyButtonStyle.blueTextButton,
        child: Text(textButton),
      )
    ],
  );
}
