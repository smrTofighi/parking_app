import 'package:flutter/material.dart';

class ParkBottomNavigation extends StatelessWidget {
  const ParkBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 12),
      child: SizedBox(
        height: 45,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'رزرو کنید',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
