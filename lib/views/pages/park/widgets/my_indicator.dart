import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:park_app/core/values/colors.dart';

class MyIndicator extends StatelessWidget {
  const MyIndicator({super.key, required this.index, required this.count});
  final int index;
  final int count;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: count,
      position: double.parse(index.toString()),
      decorator: const DotsDecorator(
        color: Colors.black87, // Inactive color
        activeColor: SolidColors.primary,
      ),
    );
  }
}
