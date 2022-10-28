import 'package:flutter/material.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/values/dimens.dart';

class BigText extends StatelessWidget {
  const BigText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimens.width,
      child: Align(
        alignment: Alignment.center,
        child: Text(text, style: MyTextStyle.helloBigTextStyle),
      ),
    );
  }
}
