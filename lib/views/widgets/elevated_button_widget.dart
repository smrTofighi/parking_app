import 'package:flutter/material.dart';

Widget elevatedButton({required Function() onPressed, required final child}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: child,
  );
}
