import 'package:flutter/material.dart';
import 'package:park_app/views/pages/main/home/widgets/home_app_bar.dart';
import 'package:park_app/views/pages/main/home/widgets/bottom_section.dart';

import 'package:park_app/views/pages/main/home/widgets/top_section.dart';

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
