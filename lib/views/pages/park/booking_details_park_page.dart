import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/routes/pages.dart';

import '../../../core/values/icons.dart';

// ignore: must_be_immutable
class BookingDetailsParkPage extends StatelessWidget {
  BookingDetailsParkPage({super.key});
  final List<String> items = [
    '6:00',
    '7:00',
    '8:00',
    '9:00',
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
    '20:00',
    '21:00',
    '22:00',
    '23:00',
    '24:00',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: SolidColors.bgWhite,
        appBar: AppBar(
          backgroundColor: SolidColors.bgWhite,
          elevation: 0,
          title: const Text(
            'جزئیات رزرو',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: ImageIcon(
              MyIcon.arrowRight.image,
              color: SolidColors.iconBlack,
              size: Dimens.smallIcon,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 85,
                  width: Dimens.width,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        height: 85,
                        width: Dimens.width / 2,
                        decoration: BoxDecoration(
                          color: SolidColors.bgWhite,
                          border: Border.all(color: Colors.black, width: 0.2),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'ورود',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            DropdownButton2(
                              hint: const Text(
                                'انتخاب زمان',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              items: items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (value) {
                                selectedValue = value as String;
                              },
                              buttonHeight: 40,
                              buttonWidth: 140,
                              itemHeight: 40,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        height: 85,
                        width: Dimens.width / 2,
                        decoration: BoxDecoration(
                          color: SolidColors.bgWhite,
                          border: Border.all(color: Colors.black, width: 0.2),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'خروج',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            DropdownButton2(
                              hint: const Text(
                                'انتخاب زمان',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              items: items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (value) {
                                selectedValue = value as String;
                              },
                              buttonHeight: 40,
                              buttonWidth: 140,
                              itemHeight: 40,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Container(
                      height: 25,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: SolidColors.primary),
                      child: const Center(
                        child: Text(
                          '3 ساعت',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              width: Dimens.width,
              height: Dimens.height / 4.2,
              color: SolidColors.bgWhite,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'اطلاعات وسیله نقلیه',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {}, child: const Text('تغییر وسیله'))
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'نام وسیله',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        'سمند',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'نوع',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        'خودرو - سدان',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'رنگ',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        'سفید',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              width: Dimens.width,
              height: 65,
              color: SolidColors.bgPrimary,
              child: const Center(
                child: Text(
                  '10000 تومان',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(32, 8, 32, 8),
          child: SizedBox(
            height: 45,
            width: Dimens.width,
            child: ElevatedButton(
              onPressed: () {
                Get.offAllNamed(NameRoutes.routeResultBookingParkPage);
              },
              child: const Text(
                'پرداخت و رزرو',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
