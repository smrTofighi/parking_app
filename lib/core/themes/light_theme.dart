import 'package:flutter/material.dart';

import '../styles/text_styles.dart';
import '../values/colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    fontFamily: 'Samim',
    inputDecorationTheme: inputDecoration(),
    elevatedButtonTheme: elevatedButtonTheme(),
    textButtonTheme: textButtomTheme(),
  );
}

TextButtonThemeData textButtomTheme() {
  return TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      foregroundColor: MaterialStateProperty.all(SolidColors.textGrey),
    ),
  );
}

ElevatedButtonThemeData elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(SolidColors.primery),
        elevation: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return 0;
            } else {
              return null;
            }
          },
        ),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ))),
  );
}

InputDecorationTheme inputDecoration() {
  return InputDecorationTheme(
    fillColor: const Color(0xfff8f9fb),
    contentPadding:
        const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0, right: 14),
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color.fromARGB(255, 168, 168, 168)),
      borderRadius: BorderRadius.circular(14.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 218, 218, 218),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(14.0),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 218, 218, 218),
      ),
      borderRadius: BorderRadius.circular(14.0),
    ),
  );
}
