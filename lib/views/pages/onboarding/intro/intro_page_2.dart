import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:park_app/gen/assets.gen.dart';

import '../../../../core/values/colors.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SolidColors.bgPrimary,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(Assets.animations.animation2, height: 300),
            const Text(
              '''
با یک سرچ کوچیک پارکینگ نزدیک
خودت رو پیدا کن و رزرو کن''',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
