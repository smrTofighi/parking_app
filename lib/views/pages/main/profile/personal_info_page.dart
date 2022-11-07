import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/core/values/icons.dart';
import 'package:park_app/core/values/strings.dart';
import 'package:park_app/gen/assets.gen.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

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
              const Align(
                alignment: Alignment.centerRight,
                child: Text(MyString.userName),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const TextField(),
              const SizedBox(
                height: 8.0,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text('جنسیت'),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text('نوع وسیله نقلیه'),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text('نام وسیله نقلیه'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
