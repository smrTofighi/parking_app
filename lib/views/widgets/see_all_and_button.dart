import 'package:flutter/material.dart';
import 'package:park_app/core/styles/text_styles.dart';
import 'package:park_app/core/values/strings.dart';
import '../../core/values/colors.dart';

class SeeAllAndButton extends StatelessWidget {
  const SeeAllAndButton(
      {super.key, required this.textButton, required this.onPressed});
  final String textButton;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            MyString.seeAll,
            style: MyTextStyle.seeAllText,
          ),
          SizedBox(
            width: 85,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(SolidColors.blueColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              child: Text(
                textButton,
                style: const TextStyle(fontSize: 10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
