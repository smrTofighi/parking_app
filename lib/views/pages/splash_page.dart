import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/controllers/register_controller.dart';
import 'package:park_app/views/widgets/loading_widget.dart';
import '../../core/values/colors.dart';
import '../../core/values/strings.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Get.find<RegisterController>().checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SolidColors.backGroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              parkingText(),
              const SizedBox(
                height: 16,
              ),
              loading(color: Colors.white, size: 32),
            ],
          ),
        ),
        bottomNavigationBar: vornaCodeText(),
      ),
    );
  }

  Text parkingText() {
    return const Text(
      ConstantStrings.prakingText,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  Padding vornaCodeText() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'توسعه یافته توسط ورناکد',
        style: TextStyle(color: Colors.white, fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
  }
}
