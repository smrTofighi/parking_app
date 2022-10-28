import 'package:flutter/material.dart';
import '../../../../core/styles/button_styles.dart';
import '../../../../core/styles/text_styles.dart';

class RowTextAndButton extends StatelessWidget {
  const RowTextAndButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.textButton});
  final String text;
  final Function() onPressed;
  final String textButton;
  @override
  Widget build(BuildContext context) {
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
}
