import 'package:flutter/material.dart';

import '../../../../../core/values/dimens.dart';
import '../../../../../core/values/strings.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 0, 8, 20),
      width: Dimens.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'صبحت بخیر، سیدمحمد',
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            MyString.findTheBestPlaceForPark,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
