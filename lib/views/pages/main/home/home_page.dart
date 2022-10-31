import 'package:flutter/material.dart';
import 'package:park_app/views/pages/main/home/widgets/app_bar.dart';
import 'package:park_app/views/pages/main/home/widgets/bottom_section.dart';

import 'package:park_app/views/pages/main/home/widgets/top_section.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const MyAppBar(),
          const TopSection(),
          BottomSection(),
        ],
      ),
    );
  }
}
