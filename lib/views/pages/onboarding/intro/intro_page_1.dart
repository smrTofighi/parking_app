import 'package:flutter/material.dart';
import 'package:park_app/core/values/colors.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SolidColors.bgPrimary,
      child: const Center(
        child: Text('Screen 1'),
      ),
    );
  }
}
