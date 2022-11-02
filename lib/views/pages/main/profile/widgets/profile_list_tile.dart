import 'package:flutter/material.dart';
import 'package:park_app/core/values/icons.dart';

import '../../../../../core/values/colors.dart';
import '../../../../../core/values/dimens.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.onPressed});
  final ImageProvider icon;
  final String title;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: SolidColors.bgPrimary,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5,
              ),
            ],
          ),
          child: ImageIcon(
            icon,
            size: Dimens.smallIcon,
            color: SolidColors.iconBlack,
          ),
        ),
        const SizedBox(
          width: 16.0,
        ),
        Text(title),
        const Spacer(),
        IconButton(
          onPressed: onPressed,
          icon: ImageIcon(
            MyIcon.arrowLeft.image,
            size: Dimens.smallIcon,
          ),
        )
      ],
    );
  }
}
