import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/routes/pages.dart';
import 'package:park_app/views/pages/main/profile/widgets/divider.dart';

class ResultBookingParkPage extends StatelessWidget {
  const ResultBookingParkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: SolidColors.bgPrimary,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(12, 30, 12, 12),
                width: Dimens.width,
                height: Dimens.height / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: SolidColors.bgWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 28,
                    ),
                    const Text(
                      'رزرو موفقیت آمیز بود برای',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      'سمند ال ایکس سفید',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    const MyDivider(color: Colors.grey, size: 0),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'زمان رزرو',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          Text(
                            'شنبه 6 آبان - ساعت 19:30',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'هزینه',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          Text(
                            '10,000 تومان',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  right: 2,
                  top: 17,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: SolidColors.bgWhite,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.offNamed(NameRoutes.routeMainPage);
                      },
                      child: const Icon(
                        FontAwesomeIcons.xmark,
                        size: 17,
                      ),
                    ),
                  ))
            ],
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(12, 12, 12, 24),
                width: Dimens.width,
                height: Dimens.height / 1.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: SolidColors.bgWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Text(
                      'کد رزرو : 2566998563',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 160,
                      height: 160,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      'در محل پارکینگ بارکد اسکن شود',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    const MyDivider(color: Colors.black, size: 0),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'قم، بلوار پیامبر اعظم، پارکینگ شرقی حرم حضرت معصومه (ع)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: Dimens.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        backgroundColor: Colors.black,
                        child: const Icon(FontAwesomeIcons.phone),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        backgroundColor: Colors.black,
                        child: const Icon(FontAwesomeIcons.locationArrow),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
