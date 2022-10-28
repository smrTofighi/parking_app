import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton(
      {super.key,
      required this.icon,
      required this.backGroundColor,
      required this.onPressed});
  final Icon icon;
  final Color backGroundColor;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backGroundColor,
      child: icon,
    );
  }
}
