import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/core/utils/snackbars/warning.dart';

import '../../../../../core/values/colors.dart';
import '../../../../../core/values/dimens.dart';
import '../../../../../core/values/icons.dart';

class TopNavigation extends StatelessWidget {
  const TopNavigation({
    Key? key,
  }) : super(key: key);

  static RxInt selectedRowIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 36),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                AnimatedContainer(
                  width: 38,
                  height: 38,
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: selectedRowIndex.value == 0
                        ? SolidColors.bgPrimary
                        : SolidColors.bgWhite,
                    boxShadow: [
                      BoxShadow(
                        color: selectedRowIndex.value == 0
                            ? Colors.transparent
                            : Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      selectedRowIndex.value = 0;
                    },
                    icon: ImageIcon(
                      MyIcon.car.image,
                      size: Dimens.smallIcon,
                      color: selectedRowIndex.value == 0
                          ? SolidColors.iconWhite
                          : SolidColors.iconBlack,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                const Text(
                  'خودرو',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                AnimatedContainer(
                  width: 38,
                  height: 38,
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: selectedRowIndex.value == 1
                        ? SolidColors.bgPrimary
                        : SolidColors.bgWhite,
                    boxShadow: [
                      BoxShadow(
                        color: selectedRowIndex.value == 1
                            ? Colors.transparent
                            : Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      selectedRowIndex.value = 1;
                    },
                    icon: ImageIcon(
                      MyIcon.motorSycle.image,
                      size: Dimens.smallIcon,
                      color: selectedRowIndex.value == 1
                          ? SolidColors.iconWhite
                          : SolidColors.iconBlack,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                const Text(
                  'موتور',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                AnimatedContainer(
                  width: 38,
                  height: 38,
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: selectedRowIndex.value == 2
                        ? SolidColors.bgPrimary
                        : SolidColors.bgWhite,
                    boxShadow: [
                      BoxShadow(
                        color: selectedRowIndex.value == 2
                            ? Colors.transparent
                            : Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      // selectedRowIndex.value = 2;
                      warningSnackBar();
                    },
                    icon: ImageIcon(
                      MyIcon.van.image,
                      size: Dimens.smallIcon,
                      color: selectedRowIndex.value == 2
                          ? SolidColors.iconWhite
                          : SolidColors.iconBlack,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                const Text(
                  'ون',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                AnimatedContainer(
                  width: 38,
                  height: 38,
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: selectedRowIndex.value == 3
                        ? SolidColors.bgPrimary
                        : SolidColors.bgWhite,
                    boxShadow: [
                      BoxShadow(
                        color: selectedRowIndex.value == 3
                            ? Colors.transparent
                            : Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      // selectedRowIndex.value = 3;
                      warningSnackBar();
                    },
                    icon: ImageIcon(
                      MyIcon.grid.image,
                      size: Dimens.smallIcon,
                      color: selectedRowIndex.value == 3
                          ? SolidColors.iconWhite
                          : SolidColors.iconBlack,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                const Text(
                  'موارد دیگر',
                  style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
