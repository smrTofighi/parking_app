import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/views/pages/main/home/home_page.dart';
import 'package:park_app/views/pages/main/profile_page.dart';
import 'package:park_app/views/pages/main/request_page.dart';
import 'package:park_app/views/pages/main/widgets/bottom_navigation.dart';

// ignore: must_be_immutable
class MainPage extends StatelessWidget {
  MainPage({super.key});
  RxInt selectedIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SolidColors.bgPrimary,
        body: Obx(
          () => IndexedStack(
            index: selectedIndex.value,
            children: [
              Positioned.fill(child: HomePage()),
              const RequestPage(),
              const ProfilePage(),
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNavigation(selectedIndex: selectedIndex),
        extendBody: true,
      ),
    );
  }
}
