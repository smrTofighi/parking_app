import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/constant/strings.dart';
import 'package:park_app/views/screens/onboarding/intro/intro_screen_1.dart';
import 'package:park_app/views/screens/onboarding/widgets/onboarding_textbutton_widget.dart';
import 'package:park_app/views/screens/register/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'intro/intro_screen_2.dart';
import 'intro/intro_screen_3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
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
              children: const [
                IntroScreen1(),
                IntroScreen2(),
                IntroScreen3(),
              ],
            ),
            smoothPageWithTextButtons(),
          ],
        ),
      ),
    );
  }

  Container smoothPageWithTextButtons() {
    return Container(
      alignment: const Alignment(0, 0.75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          onLastPage
              ? onboardingTextButton(
                  onPressed: () {
                    Get.off(const LoginScreen());
                  },
                  child: const Text(ConstantStrings.letsGoText),
                )
              : onboardingTextButton(
                  onPressed: () {
                    _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: const Text(ConstantStrings.skipText),
                ),
          SmoothPageIndicator(
              controller: _controller,
              count: 3,
              textDirection: TextDirection.ltr),
          onboardingTextButton(
            onPressed: () {
              _controller.jumpToPage(2);
            },
            child: const Text(ConstantStrings.neverMindText),
          )
        ],
      ),
    );
  }
}
