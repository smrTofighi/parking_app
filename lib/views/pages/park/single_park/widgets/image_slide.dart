import 'package:flutter/material.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/gen/assets.gen.dart';

class ImageSlide extends StatelessWidget {
  const ImageSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.width,
      height: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.radiusButtonAndTextField),
        image: DecorationImage(
            image: Image.asset(Assets.images.img.path).image,
            fit: BoxFit.cover),
      ),
    );
  }
}
