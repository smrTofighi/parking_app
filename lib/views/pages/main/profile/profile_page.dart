import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/strings.dart';
import 'package:park_app/routes/pages.dart';
import 'package:park_app/views/pages/main/profile/widgets/divider.dart';
import 'package:park_app/views/pages/main/profile/widgets/profile_list_tile.dart';
import 'package:park_app/views/pages/main/profile/widgets/user_profile_view.dart';
import '../../../../core/values/icons.dart';

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
              onPressed: () {
                Get.toNamed(NameRoutes.routePersonalInfoViewPage);
              }),
          const SizedBox(
            height: 16.0,
          ),
          // ProfileListTile(
          //     icon: MyIcon.history.image,
          //     title: MyString.parkingHistory,
          //     onPressed: () {}),
          // const SizedBox(
          //   height: 16.0,
          // ),
          ProfileListTile(
              icon: MyIcon.bookMark.image,
              title: MyString.favoriteParking,
              onPressed: () {}),
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
              onPressed: () {}),
          const SizedBox(
            height: 16.0,
          ),
          ProfileListTile(
              icon: MyIcon.privacy.image,
              title: MyString.privacy,
              onPressed: () {}),
          const SizedBox(
            height: 16.0,
          ),
          ProfileListTile(
              icon: MyIcon.aboutUs.image,
              title: MyString.aboutUs,
              onPressed: () {}),
          const SizedBox(
            height: 16.0,
          ),
          ProfileListTile(
              icon: MyIcon.logOut.image,
              title: MyString.logOut,
              onPressed: () {}),
          const Spacer(),
          const Text(
            '???????? 1.0',
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
