import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/views/pages/main/home/parts/car_part.dart';
import 'package:park_app/views/pages/main/home/parts/motor_part.dart';
import 'package:park_app/views/pages/main/home/parts/other_part.dart';
import 'package:park_app/views/pages/main/home/parts/van_part.dart';
import 'package:park_app/views/pages/main/home/widgets/top_navigation.dart';

import '../../../../../core/values/colors.dart';
import '../../../../../core/values/dimens.dart';

// ignore: must_be_immutable
class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimens.height / 5),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      width: Dimens.width,
      decoration: const BoxDecoration(
        color: SolidColors.bgWhite,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(Dimens.radiusContainer),
          topLeft: Radius.circular(Dimens.radiusContainer),
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(8, 32, 8, 16),
            child: TextField(
              cursorColor: SolidColors.primary,
              style: TextStyle(fontSize: 14),
            ),
          ),
          const TopNavigation(),
          Obx(
            () => IndexedStack(
              index: TopNavigation.selectedRowIndex.value,
              children: const [
                CarPart(),
                MotorPart(),
                VanPart(),
                OtherPart(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
