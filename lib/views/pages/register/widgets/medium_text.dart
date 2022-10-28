import 'package:flutter/material.dart';
import '../../../../core/styles/text_styles.dart';

class MediumText extends StatelessWidget {
  const MediumText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: MyTextStyle.middleTextGreyStyle,
    );
  }
}
