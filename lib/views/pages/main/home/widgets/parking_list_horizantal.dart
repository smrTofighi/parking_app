import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/routes/pages.dart';

import '../../../../../core/values/dimens.dart';
import '../../../../../models/park_model.dart';


class ParkingListHorizontal extends StatelessWidget {
  const ParkingListHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.fromLTRB(
              index == 4 ? 0 : 8, 16, index == 0 ? 0 : 8, 8),
          child: InkWell(
            onTap: () {
              Get.toNamed(NameRoutes.routeSingleParkPage);
            },
            child: Column(
              children: [
                Container(
                  width: Dimens.width / 2.4,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Dimens.radiusButtonAndTextField,
                    ),
                    image: DecorationImage(
                        image: NetworkImage(parkCarList[index].image!),
                        fit: BoxFit.cover),
                  ),
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Dimens.radiusButtonAndTextField,
                    ),
                    gradient: LinearGradient(
                        colors: [Colors.black, Colors.black.withOpacity(0.2)],
                        begin: Alignment.bottomCenter,
                        end: Alignment.center),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  parkCarList[index].name!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Row(
                  children: [
                    parkCarList[index].isOpen!
                        ? const Text(
                      'باز',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent,
                      ),
                    )
                        : const Text(
                      'بسته',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      parkCarList[index].openTime!,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        itemCount: 5,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}