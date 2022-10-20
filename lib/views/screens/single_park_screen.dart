import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/constant/color.dart';

import '../../constant/string.dart';
import '../../gen/assets.gen.dart';

class SingleParkScreen extends StatelessWidget {
  const SingleParkScreen(
      {Key? key, required this.listPark, required this.index})
      : super(key: key);
  final List listPark;
  final int index;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              // Image.asset(Assets.images.img.path),
              SizedBox(
                width: Get.width,
                height: size.height / 2.5,
                child: Image.network(
                  listPark[index].image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(28, 40, 28, 24),
                  width: Get.width,
                  height: size.height / 1.7,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            listPark[index].name!,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${listPark[index].price!} ت',
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: SolidColors.blueColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ImageIcon(
                                AssetImage(Assets.icons.location.path),
                                color: SolidColors.blueColor,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                listPark[index].location!,
                                style: const TextStyle(
                                    fontSize: 13, color: SolidColors.blueColor),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              '/ساعت',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        'توضیحات',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        listPark[index].descripton!,
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                        textAlign: TextAlign.right,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 24),
                  height: size.height / 8,
                  width: Get.width,
                  decoration: const BoxDecoration(color: SolidColors.blueColor),
                  child: SizedBox(
                    height: Get.height,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 14,
                            ),
                            const Text(
                              Strings.totalSpaceForCars,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              '${listPark[index].count!} خودرو',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: SizedBox(
                            height: 50,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                if (listPark[index].count == 0) {
                                  Get.snackbar('ظرفیت به اتمام رسیده است',
                                      'کاربر گرامی متاسفانه ظرفیت پارکنیگ پر شده است.',
                                      snackPosition: SnackPosition.BOTTOM);
                                } else if (!listPark[index].isOpen) {
                                  Get.snackbar('تعطیل است',
                                      'کاربر گرامی متاسفانه پارکنیگ مورد نظر تعطیل شده است.',
                                      snackPosition: SnackPosition.BOTTOM);
                                } else {
                                  Get.back();
                                  Get.snackbar('عملیات با موفقیت انجام شد',
                                      'کد رهگیری به زودی به شما پیامک میشود',
                                      snackPosition: SnackPosition.BOTTOM);
                                  listPark[index].count -= 1;
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                              ),
                              child: const Text(
                                'رزرو کن!',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() {
                    return IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage(Assets.icons.bookmark.path),
                          color: Colors.white,
                        ));
                  }),
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
