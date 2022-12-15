import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/core/values/storage.dart';
import 'package:park_app/core/values/strings.dart';
import 'package:park_app/routes/pages.dart';
import 'package:park_app/views/pages/main/profile/widgets/divider.dart';
import 'package:park_app/views/pages/main/profile/widgets/profile_list_tile.dart';
import '../../../../core/values/dimens.dart';
import '../../../../core/values/icons.dart';
import '../../../../gen/assets.gen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: Column(
        children: [
          const UserProfileView(),
          const SizedBox(
            height: 16.0,
          ),
          const MyDivider(color: Colors.black, size: 16),
          const SizedBox(
            height: 16.0,
          ),
          ProfileListTile(
              icon: MyIcon.user.image,
              title: MyString.personalInfo,
              onTap: () {
                Get.toNamed(NameRoutes.routePersonalInfoViewPage);
              }),
          const SizedBox(
            height: 16.0,
          ),
          ProfileListTile(
              icon: MyIcon.bookMark.image,
              title: MyString.favoriteParking,
              onTap: () {}),
          const SizedBox(
            height: 16.0,
          ),
          const MyDivider(color: Colors.black, size: 16),
          const SizedBox(
            height: 16.0,
          ),
          ProfileListTile(
              icon: MyIcon.upgrade.image,
              title: MyString.upgrade,
              onTap: () {}),
          const SizedBox(
            height: 16.0,
          ),
          ProfileListTile(
              icon: MyIcon.privacy.image,
              title: MyString.privacy,
              onTap: () {}),
          const SizedBox(
            height: 16.0,
          ),
          ProfileListTile(
              icon: MyIcon.aboutUs.image,
              title: MyString.aboutUs,
              onTap: () {}),
          const SizedBox(
            height: 16.0,
          ),
          ProfileListTile(
              icon: MyIcon.logOut.image,
              title: MyString.logOut,
              onTap: () {
                GetStorage().write(StorageKey.isLogin, false);
                Get.offAllNamed(NameRoutes.routeSignupPage);
              }),
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
