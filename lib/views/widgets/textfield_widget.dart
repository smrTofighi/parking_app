import 'package:flutter/material.dart';
import 'package:park_app/constant/styles/text_styles.dart';

Widget textfield({required String hintText}) {
  return TextField(
    style: ConstantTextStyles.textFieldStyle,
    decoration: InputDecoration(
      hintText: hintText,
    ),
  );
}
