import 'package:flutter/material.dart';
import 'package:park_app/core/styles/text_styles.dart';
import 'package:park_app/core/values/strings.dart';
import '../../core/values/colors.dart';

class SeeAllAndButton extends StatelessWidget {
  const SeeAllAndButton(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: MyTextStyle.seeAllText,
          ),
          SizedBox(
            width: 85,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(SolidColors.primery),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                elevation: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return 0;
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              child: const Text(
                MyString.seeAll,
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
