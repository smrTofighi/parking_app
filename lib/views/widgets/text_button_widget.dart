import 'package:flutter/material.dart';

Widget textButton({required final child, required Function() onPressed}) {
  return TextButton(
    onPressed: onPressed,
    child: child,
  );
}
