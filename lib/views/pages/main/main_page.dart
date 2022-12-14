import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/views/pages/main/home/home_page.dart';
import 'package:park_app/views/pages/main/profile/profile_page.dart';
import 'package:park_app/views/pages/main/follow_up_page.dart';
import 'package:park_app/views/pages/main/widgets/main_bottom_navigation.dart';

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
