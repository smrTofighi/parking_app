import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/core/values/icons.dart';
import 'package:park_app/core/values/strings.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../gen/assets.gen.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  RxInt selectedRowIndex = 0.obs;
  RxInt selectedIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SolidColors.bgPrimary,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const MyAppBar(),
              const TopSection(),
              Container(
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
                    TopBottomNavigation(selectedRowIndex: selectedRowIndex),
                    const SizedBox(
                      height: 28.0,
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'نزدیک ترین پارکینگ ها',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 600,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNavigation(selectedIndex: selectedIndex),
        extendBody: true,
      ),
    );
  }
}

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  final RxInt selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CurvedNavigationBar(
        items: [
          ImageIcon(
            selectedIndex.value == 0
                ? MyIcon.homeFill.image
                : MyIcon.home.image,
            color: SolidColors.iconBlack,
            size: Dimens.icon,
          ),
          ImageIcon(
            selectedIndex.value == 1 ? MyIcon.mapFill.image : MyIcon.map.image,
            color: SolidColors.iconBlack,
            size: Dimens.icon,
          ),
          ImageIcon(
            selectedIndex.value == 2
                ? MyIcon.ballotFill.image
                : MyIcon.ballot.image,
            color: SolidColors.iconBlack,
            size: Dimens.icon,
          ),
          ImageIcon(
            selectedIndex.value == 3
                ? MyIcon.userFill.image
                : MyIcon.user.image,
            color: SolidColors.iconBlack,
            size: Dimens.icon,
          )
        ],
        backgroundColor: Colors.transparent,
        color: SolidColors.bgPrimary,
        index: selectedIndex.value,
        onTap: (index) {
          selectedIndex.value = index;
        },
        height: 65,
      ),
    );
  }
}

class TopBottomNavigation extends StatelessWidget {
  const TopBottomNavigation({
    Key? key,
    required this.selectedRowIndex,
  }) : super(key: key);

  final RxInt selectedRowIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
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
                      size: Dimens.icon,
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
                      size: Dimens.icon,
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
                      selectedRowIndex.value = 2;
                    },
                    icon: ImageIcon(
                      MyIcon.van.image,
                      size: Dimens.icon,
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
                      selectedRowIndex.value = 3;
                    },
                    icon: ImageIcon(
                      MyIcon.grid.image,
                      size: Dimens.icon,
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
      margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      width: Dimens.width,
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

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: Dimens.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Text('م'),
          ),
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
