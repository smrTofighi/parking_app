import 'package:flutter/material.dart';
import 'package:park_app/constant/styles/textstyles.dart';

import '../colors.dart';

ThemeData lightTheme() {
  return ThemeData(
      fontFamily: 'Samim',
      inputDecorationTheme: inputDecoration(),
      elevatedButtonTheme: elevatedButtonTheme());
}

ElevatedButtonThemeData elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(SolidColors.themeColor)),
  );
}

InputDecorationTheme inputDecoration() {
  return const InputDecorationTheme(
    fillColor: Colors.white,
    hintStyle: ConstantTextStyles.hintStyle,
    contentPadding:
        EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0, right: 14),
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
  );
}
