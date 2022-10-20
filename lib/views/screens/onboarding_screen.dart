import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/views/screens/intro/intro_screen_1.dart';
import 'package:park_app/views/screens/main_screen.dart';
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
            Container(
              alignment: const Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  onLastPage
                      ? InkWell(
                          onTap: () {
                            Get.off(const MainScreen());
                          },
                          child: const SizedBox(
                            child: Text('بریم'),
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const SizedBox(
                            child: Text('ادامه'),
                          ),
                        ),
                  SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      textDirection: TextDirection.ltr),
                  InkWell(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: const SizedBox(
                      child: Text('بیخیال'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
