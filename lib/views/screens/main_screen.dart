import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/constant/colors.dart';
import 'package:park_app/constant/strings.dart';
import 'package:park_app/views/screens/single_park_screen.dart';

import '../../constant/component.dart';
import '../../gen/assets.gen.dart';
import '../../models/park_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: SolidColors.blueColor,
        //? appbar
        appBar: AppBar(
          backgroundColor: SolidColors.backGroundAppBarColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
              const Text(
                'سیدمحمد رضاتوفیقی',
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 16,
                    color: Colors.black),
              ),
              const CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text('م'),
              ),
            ],
          ),
        ),

        //? body
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textWelcomUser(),
                textFieldSearch(),
                Container(
                  margin: const EdgeInsets.fromLTRB(8, 32, 8, 0),
                  width: Get.width,
                  decoration: const BoxDecoration(
                    color: SolidColors.screenColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      rowTextAndButton(
                        Strings.bestText,
                        Strings.seeAllText,
                        () {},
                      ),
                      parkingListItem(5),
                      rowTextAndButton(
                        Strings.nearFromYou,
                        Strings.seeAllText,
                        () {},
                      ),
                      parkingListItem(
                        5,
                      ),
                      rowTextAndButton(
                        'جدیدترین ها',
                        Strings.seeAllText,
                        () {},
                      ),
                      parkingListItem(
                        parkList.length,
                      ),
                      const SizedBox(
                        height: 60,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        //? floating action button
        floatingActionButton: floationgActionButton(),
      ),
    );
  }

  Widget floationgActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.black,
      child: const Icon(
        Icons.location_on,
      ),
    );
  }

  Widget textFieldSearch() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(32, 24, 32, 8),
      child: TextField(
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: 'هر جایی رو میخوای جستجو کن (:',
          hintStyle: TextStyle(fontSize: 14),
          contentPadding:
              EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0, right: 14),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }

  Widget textWelcomUser() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 16, 32, 8),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          '${Strings.goodAfternonText} محمد جان',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w100, fontSize: 16),
        ),
      ),
    );
  }

  Widget parkingListItem(int count) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (() {
              Get.to(SingleParkScreen(listPark: parkList, index: index));
            }),
            child: Container(
              margin: EdgeInsets.fromLTRB(
                  index == parkList.length - 1 ? 24 : 0, 20, 24, 20),
              height: 120,
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              width: Get.width / 1.4,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                color: SolidColors.containerColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 7,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage(Assets.icons.car.path),
                        size: 28,
                        color: SolidColors.blueColor,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        parkList[index].name!,
                        style: const TextStyle(
                            color: SolidColors.blueColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage(Assets.icons.location.path),
                        size: 20,
                        color: Colors.redAccent,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        parkList[index].location.toString(),
                        style: const TextStyle(
                            fontSize: 12, color: SolidColors.redColor),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage(Assets.icons.dollar.path),
                            size: 18,
                            color: SolidColors.greenColor,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            '${parkList[index].price} تومان',
                            style: const TextStyle(
                                fontSize: 12, color: SolidColors.greenColor),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage(parkList[index].isOpen!
                                ? Assets.icons.tick.path
                                : Assets.icons.close.path),
                            size: 18,
                            color: parkList[index].isOpen!
                                ? SolidColors.blueColor
                                : SolidColors.redColor,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            parkList[index].isOpen! ? 'باز است' : 'بسته است',
                            style: TextStyle(
                              fontSize: 12,
                              color: parkList[index].isOpen!
                                  ? SolidColors.blueColor
                                  : SolidColors.redColor,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
        physics: const BouncingScrollPhysics(),
        itemCount: count,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
