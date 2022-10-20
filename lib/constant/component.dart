import 'package:flutter/material.dart';
import 'color.dart';

Widget rowTextAndButton(String text, String textButton, Function() onPressed) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          width: 85,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(SolidColors.blueColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
