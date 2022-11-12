import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:park_app/views/pages/main/home/parts/car_part.dart';
import 'package:park_app/views/pages/main/home/parts/motor_part.dart';
import 'package:park_app/views/pages/main/home/parts/other_part.dart';
import 'package:park_app/views/pages/main/home/parts/van_part.dart';
import '../../../../core/utils/snackbars/warning.dart';
import '../../../../core/values/colors.dart';
import '../../../../core/values/dimens.dart';
import '../../../../core/values/icons.dart';
import '../../../../core/values/strings.dart';
import '../../../../routes/pages.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: const [
                HomeAppBar(),
                TopSection(),
              ],
            ),
          ),
          const BottomSection(),
        ],
      ),
    );
  }
}

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
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: Dimens.width,
      color: SolidColors.bgPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(NameRoutes.routePersonalInfoViewPage);
            },
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('م'),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.bell,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}

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
class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
      width: Dimens.width,
      height: Dimens.height / 3,
      color: SolidColors.bgPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'صبحت بخیر، سیدمحمد',
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            MyString.findTheBestPlaceForPark,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}