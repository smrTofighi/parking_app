import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/views/pages/main/home/home_page.dart';
import 'package:park_app/views/pages/main/profile/profile_page.dart';
import 'package:park_app/views/pages/main/follow_up/follow_up_page.dart';

import '../../../core/values/dimens.dart';
import '../../../core/values/icons.dart';

// ignore: must_be_immutable
class MainPage extends StatelessWidget {
  MainPage({super.key});
  RxInt selectedIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SolidColors.bgWhite,
        body: Obx(
          () => IndexedStack(
            index: selectedIndex.value,
            children: const [
              Positioned.fill(child: HomePage()),
              FollowUpPage(),
              ProfilePage(),
            ],
          ),
        ),
        bottomNavigationBar: MainBottomNavigation(selectedIndex: selectedIndex),
        extendBody: true,
      ),
    );
  }
}

class MainBottomNavigation extends StatelessWidget {
  const MainBottomNavigation({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  final RxInt selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => CurvedNavigationBar(
        items: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageIcon(
              selectedIndex.value == 0
                  ? MyIcon.homeFill.image
                  : MyIcon.home.image,
              color: SolidColors.iconBlack,
              size: Dimens.mediumIcon,
            ),
          ),
          // ImageIcon(
          //   selectedIndex.value == 1 ? MyIcon.mapFill.image : MyIcon.map.image,
          //   color: SolidColors.iconBlack,
          //   size: Dimens.mediumIcon,
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageIcon(
              selectedIndex.value == 1
                  ? MyIcon.ballotFill.image
                  : MyIcon.ballot.image,
              color: SolidColors.iconBlack,
              size: Dimens.mediumIcon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageIcon(
              selectedIndex.value == 2
                  ? MyIcon.userFill.image
                  : MyIcon.user.image,
              color: SolidColors.iconBlack,
              size: Dimens.mediumIcon,
            ),
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
