import 'package:flutter/material.dart';

import '../../../../core/values/colors.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SolidColors.bgPrimary,
      child: const Center(
        child: Text('Screen 3'),
      ),
    );
  }
}
