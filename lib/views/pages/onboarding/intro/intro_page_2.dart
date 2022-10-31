import 'package:flutter/material.dart';

import '../../../../core/values/colors.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SolidColors.bgPrimary,
      child: const Center(
        child: Text('Screen 2'),
      ),
    );
  }
}
