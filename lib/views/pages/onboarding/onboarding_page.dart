import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/core/styles/button_styles.dart';
import 'package:park_app/views/pages/onboarding/intro/intro_page_1.dart';
import 'package:park_app/views/pages/onboarding/widgets/smooth_page_indicator.dart';
import 'package:park_app/views/pages/register/login_page.dart';
import '../../../core/values/strings.dart';
import 'intro/intro_page_2.dart';
import 'intro/intro_page_3.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  //^ controller to keep track of witch page we're on
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              reverse: true,
              children: introPagesList,
            ),
            BottomSection(onLastPage: onLastPage, controller: _controller),
          ],
        ),
      ),
    );
  }
}

List<Widget> introPagesList = const [
  IntroPage1(),
  IntroPage2(),
  IntroPage3(),
];

class BottomSection extends StatelessWidget {
  const BottomSection(
      {super.key, required this.onLastPage, required this.controller});
  final bool onLastPage;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, 0.75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          onLastPage
              ? TextButton(
                  onPressed: () {
                    Get.off(const LoginPage());
                  },
                  style: MyButtonStyle.whiteTextButton,
                  child: const Text(MyString.letsGo),
                )
              : TextButton(
                  onPressed: () {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  style: MyButtonStyle.whiteTextButton,
                  child: const Text(MyString.skip),
                ),
          MySmoothPage(
            controller: controller,
            count: 3,
          ),
          TextButton(
            onPressed: () {
              controller.jumpToPage(2);
            },
            style: MyButtonStyle.whiteTextButton,
            child: const Text(MyString.neverMind),
          )
        ],
      ),
    );
  }
}
