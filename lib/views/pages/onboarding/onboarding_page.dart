import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/views/pages/onboarding/intro/intro_page_1.dart';
import 'package:park_app/views/pages/onboarding/widgets/onboarding_textbutton_widget.dart';
import 'package:park_app/views/pages/register/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
              children: const [
                IntroPage1(),
                IntroPage2(),
                IntroPage3(),
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
                    Get.off(const LoginPage());
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
