import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/gen/assets.gen.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SolidColors.bgPrimary,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 38.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              Assets.animations.animation1,
              height: 300,
            ),
            const Text(
              '''
هرپارکینگی که برای ماشینتون میخواهید
در پارکینگ من''',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
