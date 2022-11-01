import 'package:flutter/material.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/gen/assets.gen.dart';
import '../../../../core/values/colors.dart';
import '../../../../core/values/icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: Column(
        children: [
          Row(
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
                    style: TextStyle(
                        fontSize: 13, color: Color.fromRGBO(97, 97, 97, 1)),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Divider(
            color: Colors.black,
            indent: 16,
            endIndent: 16,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              Container(
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
                child: IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    MyIcon.van.image,
                    size: Dimens.smallIcon,
                    color: SolidColors.iconBlack,
                  ),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              const Text('اطلاعات شخصی'),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward))
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              Container(
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
                child: IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    MyIcon.van.image,
                    size: Dimens.smallIcon,
                    color: SolidColors.iconBlack,
                  ),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              const Text('اطلاعات شخصی'),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward))
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              Container(
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
                child: IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    MyIcon.van.image,
                    size: Dimens.smallIcon,
                    color: SolidColors.iconBlack,
                  ),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              const Text('اطلاعات شخصی'),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward))
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              Container(
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
                child: IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    MyIcon.van.image,
                    size: Dimens.smallIcon,
                    color: SolidColors.iconBlack,
                  ),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              const Text('اطلاعات شخصی'),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward))
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Divider(
            color: Colors.black,
            indent: 16,
            endIndent: 16,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              Container(
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
                child: IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    MyIcon.van.image,
                    size: Dimens.smallIcon,
                    color: SolidColors.iconBlack,
                  ),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              const Text('اطلاعات شخصی'),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward))
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              Container(
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
                child: IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    MyIcon.van.image,
                    size: Dimens.smallIcon,
                    color: SolidColors.iconBlack,
                  ),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              const Text('اطلاعات شخصی'),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward))
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              Container(
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
                child: IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    MyIcon.van.image,
                    size: Dimens.smallIcon,
                    color: SolidColors.iconBlack,
                  ),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              const Text('اطلاعات شخصی'),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward))
            ],
          ),
          const Spacer(),
          const Text(
            'ورژن 1.0',
            style: TextStyle(fontSize: 13.0),
          ),
          const SizedBox(
            height: 64.0,
          ),
        ],
      ),
    );
  }
}
