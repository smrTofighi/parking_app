import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/core/values/icons.dart';
import 'package:park_app/views/pages/single_park_page.dart';
import 'package:park_app/views/widgets/floating_action_button.dart';
import '../../core/values/colors.dart';
import '../../core/values/strings.dart';
import '../../gen/assets.gen.dart';
import '../../models/park_model.dart';
import '../widgets/see_all_and_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SolidColors.backGround,
        //? appbar
        appBar: AppBar(
          backgroundColor: SolidColors.backGroundAppBar,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  MyIcon.menu.image,
                  color: Colors.black,
                  size: Dimens.icon,
                ),
              ),
              const Text(
                'سیدمحمد رضاتوفیقی',
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 16,
                    color: Colors.black),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  MyIcon.search.image,
                  color: Colors.black,
                  size: Dimens.icon,
                ),
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
                const WelcomeUserText(),
                // const TextFieldSearch(),
                Container(
                  margin: const EdgeInsets.fromLTRB(8, 32, 8, 0),
                  width: Get.width,
                  decoration: const BoxDecoration(
                    color: SolidColors.greyBackGround,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      SeeAllAndButton(
                        text: MyString.best,
                        onPressed: () {},
                      ),
                      const ParkingList(count: 4),
                      SeeAllAndButton(
                        text: MyString.nearFromYou,
                        onPressed: () {},
                      ),
                      const ParkingList(
                        count: 5,
                      ),
                      SeeAllAndButton(
                        text: MyString.newest,
                        onPressed: () {},
                      ),
                      ParkingList(
                        count: parkList.length,
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
        floatingActionButton: MyFloatingActionButton(
          icon: const Icon(Icons.location_on),
          backGroundColor: Colors.black,
          onPressed: () {},
        ),
      ),
    );
  }
}

//? Widgets

class ParkingList extends StatelessWidget {
  const ParkingList({super.key, required this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (() {
              Get.to(SingleParkPage(listPark: parkList, index: index));
            }),
            child: Container(
              margin: EdgeInsets.fromLTRB(
                  index == parkList.length - 1 ? 24 : 0, 20, 24, 20),
              height: 120,
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              width: Dimens.width / 1.4,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                color: SolidColors.greyBackGround,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 15,
                      offset: const Offset(5, 5)),
                  const BoxShadow(
                    color: Colors.white,
                    blurRadius: 15,
                    offset: Offset(-5, -5),
                  ),
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
                        color: SolidColors.primery,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        parkList[index].name!,
                        style: const TextStyle(
                            color: SolidColors.primery,
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
                            fontSize: 12, color: SolidColors.red),
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
                            color: SolidColors.green,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            '${parkList[index].price} تومان',
                            style: const TextStyle(
                                fontSize: 12, color: SolidColors.green),
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
                                ? SolidColors.primery
                                : SolidColors.red,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            parkList[index].isOpen! ? 'باز است' : 'بسته است',
                            style: TextStyle(
                              fontSize: 12,
                              color: parkList[index].isOpen!
                                  ? SolidColors.primery
                                  : SolidColors.red,
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

class WelcomeUserText extends StatelessWidget {
  const WelcomeUserText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 28, 32, 0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          '${MyString.goodAfternon} محمد جان',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w100, fontSize: 16),
        ),
      ),
    );
  }
}

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(32, 24, 32, 8),
      child: TextField(
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
          fillColor: SolidColors.textFieldBackGround,
          hintText: 'هر جایی رو میخوای جستجو کن (:',
        ),
      ),
    );
  }
}
