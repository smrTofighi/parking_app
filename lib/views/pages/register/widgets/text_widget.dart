import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/styles/text_styles.dart';

Widget helloText({required text}) {
  return SizedBox(
    width: Get.width,
    child: Align(
      alignment: Alignment.center,
      child: Text(text, style: ConstantTextStyles.helloBigTextStyle),
    ),
  );
}

Widget messageForUserText({required text}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: ConstantTextStyles.middleTextGreyStyle,
  );
}
