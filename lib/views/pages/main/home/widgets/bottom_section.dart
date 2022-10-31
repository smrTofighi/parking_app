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
  BottomSection({super.key});
  RxInt selectedRowIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Container(
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
          TopNavigation(selectedRowIndex: selectedRowIndex),
          const SizedBox(
            height: 28.0,
          ),
          Obx(
            () => IndexedStack(
              index: selectedRowIndex.value,
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
