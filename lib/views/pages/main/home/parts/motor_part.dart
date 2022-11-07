import 'package:flutter/material.dart';
import 'package:park_app/views/pages/main/home/widgets/parking_list_horizantal.dart';

class MotorPart extends StatelessWidget {
  const MotorPart({super.key});

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
        ParkingListHorizantal(),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'برترین پارکینگ ها',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ParkingListHorizantal(),
        SizedBox(
          height: 68,
        ),
      ],
    );
  }
}
