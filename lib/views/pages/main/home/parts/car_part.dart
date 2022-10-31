import 'package:flutter/material.dart';
import '../../../../../core/values/colors.dart';
import '../../../../../core/values/dimens.dart';
import '../../../../../core/values/icons.dart';
import '../../../../../models/park_model.dart';

class CarPart extends StatelessWidget {
  const CarPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'نزدیک ترین پارکینگ ها',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 170,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.fromLTRB(
                  index == 4 ? 0 : 8, 16, index == 0 ? 0 : 8, 8),
              child: Column(
                children: [
                  Container(
                    width: Dimens.width / 2.4,
                    height: 90,
                    decoration: BoxDecoration(
                      color: SolidColors.primary,
                      borderRadius: BorderRadius.circular(
                        Dimens.radiusButtonAndTextField,
                      ),
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
            itemCount: 5,
            scrollDirection: Axis.horizontal,
          ),
        ),
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'تاریخچه پارک ها',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: Dimens.width,
          height: 120 * 5.5,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Dimens.radiusButtonAndTextField,
                      ),
                      color: SolidColors.bottomContainerInfoScreen,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          parkCarList[index].name!,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Row(
                          children: [
                            ImageIcon(
                              MyIcon.maker.image,
                              size: 18,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              parkCarList[index].location!,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ ${parkCarList[index].price}/",
                              style: const TextStyle(
                                  color: SolidColors.primary,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'ساعت',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            scrollDirection: Axis.vertical,
          ),
        ),
      ],
    );
  }
}
