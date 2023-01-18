import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:park_app/core/styles/text_styles.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/core/values/icons.dart';
import 'package:park_app/gen/assets.gen.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: SolidColors.primary,
          title: const Text(
            'درباره پارکینگ',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: ImageIcon(
              MyIcon.arrowRight.image,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: Dimens.width,
              child: Lottie.asset(Assets.animations.animation2, height: 300),
            ),
            const Text(
              'ماشین خودتون رو با خیال راحت پارک کنید',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'اپلیکیشن پارکینگ برای پیدا کردن فضا برای پارک وسیله نقلیه شماست. هدف ما صرفه جویی در زمان کاربران عزیز بوده و به آسان ترین روش ممکن برای خودرو خود یک فضا رزرو کنید. این اپلیکیشن توسط تیم ورناکد توسعه یافته است.',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.right,
              ),
            )
          ],
        ),
      ),
    );
  }
}
