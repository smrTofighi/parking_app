import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/core/values/strings.dart';
import 'package:park_app/gen/assets.gen.dart';

// ignore: must_be_immutable
class PersonalInfoEditPage extends StatelessWidget {
  PersonalInfoEditPage({super.key});

  final List<String> items = [
    'سفید',
    'مشکی',
    'نقره ای',
    'نوک مدادی',
    'زرد',
    'قرمز',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SolidColors.bgWhite,
        appBar: AppBar(
          backgroundColor: SolidColors.bgPrimary,
          automaticallyImplyLeading: false,
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
          child: SingleChildScrollView(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'وسیله های نقلیه',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.bottomSheet(
                            Container(
                              margin: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                              padding: const EdgeInsets.all(12.0),
                              width: Dimens.width,
                              height: Dimens.height / 2.2,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight:
                                        Radius.circular(Dimens.radiusContainer),
                                    topLeft:
                                        Radius.circular(Dimens.radiusContainer),
                                  ),
                                  color: SolidColors.bgWhite),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: Dimens.width,
                                    height: 45,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: IconButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        icon:
                                            const Icon(FontAwesomeIcons.xmark),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          const Text('خودرو'),
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
                                          const Text('موتور'),
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
                                    height: 16,
                                  ),
                                  const TextField(
                                    decoration: InputDecoration(
                                        labelText: 'نام وسیله نقلیه',
                                        labelStyle: TextStyle(
                                            color: Colors.grey, fontSize: 14)),
                                  ),
                                  const SizedBox(
                                    height: 24.0,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton2(
                                        isExpanded: true,
                                        hint: Row(
                                          children: const [
                                            Icon(
                                              Icons.color_lens,
                                              size: 16,
                                              color: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'رنگ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                        items: items
                                            .map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ))
                                            .toList(),
                                        value: selectedValue,
                                        onChanged: (value) {
                                          selectedValue = value as String;
                                        },
                                        icon: const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                        ),
                                        iconSize: 14,
                                        iconEnabledColor: Colors.black,
                                        iconDisabledColor: Colors.grey,
                                        buttonHeight: 50,
                                        buttonWidth: 160,
                                        buttonPadding: const EdgeInsets.only(
                                            left: 14, right: 14),
                                        buttonDecoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          border: Border.all(
                                            color: Colors.black26,
                                          ),
                                          color: SolidColors.bgWhite,
                                        ),
                                        buttonElevation: 2,
                                        itemHeight: 40,
                                        itemPadding: const EdgeInsets.only(
                                            left: 14, right: 14),
                                        dropdownMaxHeight: 200,
                                        dropdownWidth: 200,
                                        dropdownPadding: null,
                                        dropdownDecoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          color: SolidColors.primary,
                                        ),
                                        dropdownElevation: 8,
                                        scrollbarRadius:
                                            const Radius.circular(40),
                                        scrollbarThickness: 6,
                                        scrollbarAlwaysShow: true,
                                        offset: const Offset(-20, 0),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    width: Dimens.width,
                                    height: 45,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                      child: const Text('ثبت'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            backgroundColor: Colors.transparent,
                            isDismissible: false);
                      },
                      icon: const Icon(
                        FontAwesomeIcons.plus,
                      ),
                      splashColor: SolidColors.primary,
                    ),
                  ],
                )
              ],
            ),
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
                    Get.back();
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
