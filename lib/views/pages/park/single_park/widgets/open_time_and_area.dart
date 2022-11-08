import 'package:flutter/material.dart';

import '../../../../../core/values/colors.dart';
import '../../../../../core/values/icons.dart';

class OpenTimeAndArea extends StatelessWidget {
  const OpenTimeAndArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageIcon(
                MyIcon.star.image,
                color: SolidColors.primary,
                size: 18,
              ),
              const SizedBox(
                width: 6,
              ),
              const Text(
                '10 کیلومتر مربع',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Row(
            children: [
              ImageIcon(
                MyIcon.star.image,
                color: SolidColors.primary,
                size: 18,
              ),
              const SizedBox(
                width: 6,
              ),
              const Text(
                '7:00 - 22:00',
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
