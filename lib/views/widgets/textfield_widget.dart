import 'package:flutter/material.dart';
import 'package:park_app/constant/styles/textstyles.dart';

Widget textfield({required String hintText}) {
  return TextField(
    style: ConstantTextStyles.textFieldStyle,
    decoration: InputDecoration(
      hintText: hintText,
    ),
  );
}
