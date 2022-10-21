import 'package:flutter/material.dart';

Widget onboardingTextButton(
    {required Function() onPressed, required Text child}) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
    ),
    child: child,
  );
}
