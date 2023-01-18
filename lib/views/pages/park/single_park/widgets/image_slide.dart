import 'package:flutter/material.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/gen/assets.gen.dart';

import '../../../../../models/park_model.dart';

class ImageSlide extends StatelessWidget {
  const ImageSlide({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.width,
      height: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.radiusButtonAndTextField),
        image: DecorationImage(
            image: NetworkImage(parkCarList[index].image.toString()),
            fit: BoxFit.cover),
      ),
    );
  }
}
