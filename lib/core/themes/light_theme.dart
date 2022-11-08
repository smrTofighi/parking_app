import 'package:flutter/material.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/gen/fonts.gen.dart';
import '../values/colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    fontFamily: FontFamily.samim,
    inputDecorationTheme: inputDecoration(),
    elevatedButtonTheme: elevatedButtonTheme(),
    textButtonTheme: textButtomTheme(),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        overlayColor: MaterialStateProperty.resolveWith(
          (states) => SolidColors.primary.withOpacity(0.1),
        ),
        side: MaterialStateProperty.all(
          const BorderSide(color: SolidColors.primary),
        ),
      ),
    ),
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
      backgroundColor: MaterialStateProperty.all(SolidColors.primary),
      elevation: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.pressed)) {
            return 0;
          } else {
            return null;
          }
        },
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
      ),
    ),
  );
}

InputDecorationTheme inputDecoration() {
  return InputDecorationTheme(
    fillColor: SolidColors.bgTextField,
    contentPadding:
        const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0, right: 14),
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: SolidColors.enableBorderTextField,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(Dimens.radiusButtonAndTextField),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.circular(Dimens.radiusButtonAndTextField),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: SolidColors.borderTextField,
      ),
      borderRadius: BorderRadius.circular(Dimens.radiusButtonAndTextField),
    ),
  );
}
