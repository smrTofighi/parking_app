import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/routes/pages.dart';

class SingleParkBottomNavigation extends StatelessWidget {
  const SingleParkBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 12),
      child: SizedBox(
        height: 45,
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(NameRoutes.routeBookingDetailsParkPage);
          },
          child: const Text(
            'رزرو کنید',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
