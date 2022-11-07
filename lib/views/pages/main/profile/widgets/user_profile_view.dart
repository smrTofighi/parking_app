import 'package:flutter/material.dart';
import '../../../../../core/values/dimens.dart';
import '../../../../../gen/assets.gen.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(Dimens.radiusButtonAndTextField),
              image: DecorationImage(
                  image: Image.asset(Assets.images.img.path).image,
                  fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 16.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'سیدمحمد رضاتوفیقی',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'mrtofxn@gmail.com',
              style:
                  TextStyle(fontSize: 13, color: Color.fromRGBO(97, 97, 97, 1)),
            ),
          ],
        )
      ],
    );
  }
}
