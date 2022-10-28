import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MySmoothPage extends StatelessWidget {
  const MySmoothPage(
      {super.key, required this.controller, required this.count});
  final PageController controller;
  final int count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,
      textDirection: TextDirection.ltr,
    );
  }
}
