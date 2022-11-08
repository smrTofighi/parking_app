import 'package:flutter/material.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/core/values/icons.dart';

import '../../../core/values/colors.dart';

class FollowUpPage extends StatelessWidget {
  const FollowUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: SolidColors.bgWhite,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            elevation: 0,
            backgroundColor: SolidColors.primary,
            bottom: const TabBar(
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  child: Text(
                    'جاری',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'گذشته',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            const Center(
              child: Text('پارکنیگی برای رزرو وجود ندارد!'),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(10),
                    width: Dimens.width,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: SolidColors.bgWhite,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'صورتحساب 3245662598',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'جمعه 6 آبان ساعت 12:53',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                side: MaterialStateProperty.all(
                                  const BorderSide(color: SolidColors.primary),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 6.0),
                                child: Text(
                                  'اطلاعات پرداخت',
                                  style: TextStyle(
                                      fontSize: 12, color: SolidColors.primary),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(8, 14, 8, 0),
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            children: [
                              ImageIcon(
                                MyIcon.car.image,
                                size: Dimens.smallIcon,
                                color: SolidColors.primary,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    'قم، پارکینگ شرقی حرم حضرت معصومه',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'جمعه 6 آبان - 13:30',
                                    style: TextStyle(
                                        fontSize: 9, color: Colors.grey),
                                  )
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: ImageIcon(
                                  MyIcon.arrowLeft.image,
                                  size: 16,
                                  color: SolidColors.primary,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(10),
                    width: Dimens.width,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: SolidColors.bgWhite,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'صورتحساب 3245662598',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'جمعه 6 آبان ساعت 12:53',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                side: MaterialStateProperty.all(
                                  const BorderSide(color: SolidColors.primary),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 6.0),
                                child: Text(
                                  'اطلاعات پرداخت',
                                  style: TextStyle(
                                      fontSize: 12, color: SolidColors.primary),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(8, 14, 8, 0),
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            children: [
                              ImageIcon(
                                MyIcon.car.image,
                                size: Dimens.smallIcon,
                                color: SolidColors.primary,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    'قم، پارکینگ شرقی حرم حضرت معصومه',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'جمعه 6 آبان - 13:30',
                                    style: TextStyle(
                                        fontSize: 9, color: Colors.grey),
                                  )
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: ImageIcon(
                                  MyIcon.arrowLeft.image,
                                  size: 16,
                                  color: SolidColors.primary,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(10),
                    width: Dimens.width,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: SolidColors.bgWhite,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'صورتحساب 3245662598',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'جمعه 6 آبان ساعت 12:53',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                side: MaterialStateProperty.all(
                                  const BorderSide(color: SolidColors.primary),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 6.0),
                                child: Text(
                                  'اطلاعات پرداخت',
                                  style: TextStyle(
                                      fontSize: 12, color: SolidColors.primary),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(8, 14, 8, 0),
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            children: [
                              ImageIcon(
                                MyIcon.car.image,
                                size: Dimens.smallIcon,
                                color: SolidColors.primary,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    'قم، پارکینگ شرقی حرم حضرت معصومه',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'جمعه 6 آبان - 13:30',
                                    style: TextStyle(
                                        fontSize: 9, color: Colors.grey),
                                  )
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: ImageIcon(
                                  MyIcon.arrowLeft.image,
                                  size: 16,
                                  color: SolidColors.primary,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
