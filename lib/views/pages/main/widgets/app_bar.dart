import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/values/dimens.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: Dimens.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Text('م'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.bell,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}
