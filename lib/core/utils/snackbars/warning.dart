import 'package:flutter/material.dart';
import 'package:get/get.dart';

void warningSnackBar() {
  Get.snackbar(
    'در حال توسعه',
    'کاربر گرامی هنوز پارکینگی در این بخش اضافه نشده',
    isDismissible: false,
    margin: const EdgeInsets.all(8.0),
  );
}
