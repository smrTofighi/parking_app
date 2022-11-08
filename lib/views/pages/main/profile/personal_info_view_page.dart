import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/routes/pages.dart';

import '../../../../core/values/colors.dart';
import '../../../../core/values/icons.dart';
import '../../../../core/values/strings.dart';
import '../../../../gen/assets.gen.dart';

class PersonalInfoViewPage extends StatelessWidget {
  const PersonalInfoViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: SolidColors.bgPrimary,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: ImageIcon(
              MyIcon.arrowRight.image,
              color: SolidColors.iconBlack,
            ),
          ),
          title: const Text(
            MyString.personalInfo,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(Dimens.radiusButtonAndTextField),
                  image: DecorationImage(
                    image: Image.asset(Assets.images.img.path).image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    height: Dimens.height / 2.5,
                    width: Dimens.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      color: SolidColors.primary.withOpacity(0.5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('جنیست :'),
                        Text('نام :'),
                        Text('نام خانوادگی :'),
                        Text('تلفن همراه :'),
                        Text('ایمیل :'),
                        Text('نام خودرو :'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: Dimens.width / 1.7,
                    height: Dimens.height / 2.5,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      border: Border.all(
                        color: SolidColors.primary.withOpacity(0.5),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('مرد'),
                        Text('سیدمحمد'),
                        Text('رضاتوفیقی'),
                        Text('09912382487'),
                        Text('mrtofxn@gmail.com'),
                        Text('سمند سفید'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: Dimens.width / 2.3,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  child: const Text(
                    'تغییر رمز عبور',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: Dimens.width / 2.3,
                height: 45,
                child: OutlinedButton(
                  onPressed: () {
                    Get.toNamed(NameRoutes.routePersonalInfoEditPage);
                  },
                  child: const Text(
                    'ویرایش اطلاعات',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
