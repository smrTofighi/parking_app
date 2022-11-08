import 'package:flutter/material.dart';

import '../../../../../core/values/icons.dart';

class SectionNameLocationSave extends StatelessWidget {
  const SectionNameLocationSave({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'پارکنیگ شرقی حرم حضرت معصومه',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'قم، انتهای بلوار پیامبر اعظم',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: ImageIcon(MyIcon.bookMark.image),
          ),
        ],
      ),
    );
  }
}
