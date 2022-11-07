import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/values/colors.dart';

class TimeListForBooking extends StatelessWidget {
  TimeListForBooking({super.key});
  final RxInt selectedTimeOfParking = 0.obs;
  @override
  Widget build(BuildContext context) {
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
                duration: const Duration(milliseconds: 500),
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
                  children: const [
                    Text(
                      '1 ساعت',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '2000 تومان',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: 6,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
