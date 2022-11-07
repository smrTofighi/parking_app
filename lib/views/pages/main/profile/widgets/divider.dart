import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key, required this.color, required this.size});
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black,
      indent: 16,
      endIndent: 16,
    );
  }
}
