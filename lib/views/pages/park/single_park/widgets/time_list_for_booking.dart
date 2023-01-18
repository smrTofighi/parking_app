import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/values/colors.dart';

class TimeListForBooking extends StatelessWidget {
  TimeListForBooking({super.key});
  final RxInt selectedTimeOfParking = 0.obs;
  @override
  Widget build(BuildContext context) {
    List timeList = [
      '1 ساعت',
      '2 ساعت',
      '3 ساعت',
      '4 ساعت',
      '5 ساعت',
      '6 ساعت',
      '7 ساعت',
      '8 ساعت',
    ];
    List priceList = [
      '1500 تومان',
      '3000 تومان',
      '4500 تومان',
      '6000 تومان',
      '7500 تومان',
      '9000 تومان',
      '10000 تومان',
      '11000 تومان',
    ];
    return SizedBox(
      height: 85,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Obx(
            () => InkWell(
              onTap: () {
                selectedTimeOfParking.value = index;
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.symmetric(vertical: 12),
                width: 65,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(color: Colors.black, width: 0.5),
                  color: selectedTimeOfParking.value == index
                      ? SolidColors.primary
                      : SolidColors.bgWhite,
                  boxShadow: [
                    BoxShadow(
                      color: selectedTimeOfParking.value == index
                          ? Colors.transparent
                          : Colors.black.withOpacity(0.5),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      timeList[index],
                      style: const TextStyle(fontSize: 12),
                    ),
                    Text(
                      priceList[index],
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: timeList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
