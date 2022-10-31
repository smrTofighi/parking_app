import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/core/values/strings.dart';
import 'package:park_app/views/pages/main/widgets/app_bar.dart';
import 'package:park_app/views/pages/main/widgets/bottom_navigation.dart';
import 'package:park_app/views/pages/main/widgets/top_navigation.dart';

// ignore: must_be_immutable
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
                    TopNavigation(selectedRowIndex: selectedRowIndex),
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
                    const SizedBox(
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
