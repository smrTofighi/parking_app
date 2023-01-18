import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/core/values/dimens.dart';
import 'package:park_app/core/values/icons.dart';

class FavoriteParkingsPage extends StatelessWidget {
  const FavoriteParkingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: SolidColors.primary,
          title: const Text(
            'پارکینگ های مورد علاقه',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: ImageIcon(
              MyIcon.arrowRight.image,
              color: Colors.black,
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Row(
            children: [
              Container(
                margin: const EdgeInsets.all(8.0),
                width: Dimens.width / 3.9,
                height: Dimens.height / 7,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(Dimens.radiusButtonAndTextField),
                  color: SolidColors.primary,
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://cdn.yjc.news/files/fa/news/1401/3/15/16156862_661.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          itemCount: 12,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
