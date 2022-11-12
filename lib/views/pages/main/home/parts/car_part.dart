import 'package:flutter/material.dart';
import 'package:park_app/views/pages/main/home/widgets/parking_list_horizantal.dart';

class CarPart extends StatelessWidget {
  const CarPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'نزدیک ترین پارکینگ ها',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ParkingListHorizontal(),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'برترین پارکینگ ها',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ParkingListHorizontal(),
        SizedBox(
          height: 68,
        ),
      ],
    );
  }
}
