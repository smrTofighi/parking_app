import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/core/values/icons.dart';
import 'package:park_app/core/values/strings.dart';
import 'package:park_app/gen/assets.gen.dart';

import '../../../../routes/pages.dart';

class PersonalInfoEditPage extends StatelessWidget {
  const PersonalInfoEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SolidColors.bgWhite,
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
            'ویرایش اطلاعات شخصی',
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
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              Dimens.radiusButtonAndTextField),
                          image: DecorationImage(
                            image: Image.asset(Assets.images.img.path).image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: SolidColors.primary),
                            color: SolidColors.bgWhite),
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            FontAwesomeIcons.camera,
                            size: Dimens.smallIcon,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Text('مرد'),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Radio(
                        value: 0,
                        groupValue: 0,
                        activeColor: SolidColors.primary,
                        onChanged: (value) {},
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text('زن'),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Radio(
                        value: 1,
                        groupValue: 0,
                        activeColor: SolidColors.primary,
                        onChanged: (value) {},
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const TextField(
                decoration: InputDecoration(
                    labelText: MyString.userName,
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 14)),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const TextField(
                decoration: InputDecoration(
                    labelText: 'نام خانوادگی',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 14)),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const TextField(
                decoration: InputDecoration(
                    labelText: 'تلفن همراه',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 14)),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const TextField(
                decoration: InputDecoration(
                    labelText: 'ایمیل',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    enabled: false),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const TextField(
                decoration: InputDecoration(
                    labelText: 'وسیله نقلیه',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 14)),
              ),
              const SizedBox(
                height: 16.0,
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
                child: OutlinedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    'لغو',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: Dimens.width / 2.3,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(NameRoutes.routeMainPage);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  child: const Text(
                    'ذخیره',
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
