import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:park_app/gen/assets.gen.dart';

import '../../../../core/values/colors.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

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
            Lottie.asset(Assets.animations.animation5, height: 300),
            const Text(
              '''
خیالت هم بابت ماشینت راحت باشه
و به کار هات میتونی برسی''',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
