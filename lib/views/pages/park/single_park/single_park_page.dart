import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:park_app/core/values/colors.dart';
import 'package:park_app/views/pages/park/single_park/widgets/image_slide.dart';
import 'package:park_app/views/pages/park/single_park/widgets/my_indicator.dart';
import 'package:park_app/views/pages/park/single_park/widgets/open_time_and_area.dart';
import 'package:park_app/views/pages/park/single_park/widgets/single_park_bottom_navigation.dart';
import 'package:park_app/views/pages/park/single_park/widgets/rules_text.dart';
import 'package:park_app/views/pages/park/single_park/widgets/section_name_location_save.dart';
import 'package:park_app/views/pages/park/single_park/widgets/time_list_for_booking.dart';

import '../../../../core/values/icons.dart';

class SingleParkPage extends StatelessWidget {
  SingleParkPage({Key? key}) : super(key: key);
  final CarouselController _controller = CarouselController();
  final RxInt selectedPictureIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SolidColors.bgWhite,
        appBar: AppBar(
          backgroundColor: SolidColors.bgWhite,
          elevation: 0,
          title: const Text(
            'مشخصات پارکنیگ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: ImageIcon(
              MyIcon.arrowRight.image,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 16.0,
              ),
              CarouselSlider(
                items: const [
                  ImageSlide(),
                  ImageSlide(),
                  ImageSlide(),
                ],
                carouselController: _controller,
                options: CarouselOptions(
                    autoPlay: false,
                    onPageChanged: (index, reason) {
                      selectedPictureIndex.value = index;
                    },
                    enlargeCenterPage: true,
                    viewportFraction: 0.8,
                    aspectRatio: 2.0,
                    enableInfiniteScroll: false),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Obx(
                () => MyIndicator(
                  index: selectedPictureIndex.value,
                  count: 3,
                ),
              ),
              const SectionNameLocationSave(),
              const OpenTimeAndArea(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'قوانین',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const RulesText(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'زمان پارک را انتخاب کنید',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              TimeListForBooking(),
            ],
          ),
        ),
        bottomNavigationBar: const SingleParkBottomNavigation(),
      ),
    );
  }
}
