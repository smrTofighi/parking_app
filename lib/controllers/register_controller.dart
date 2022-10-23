import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/core/values/storage.dart';
import 'package:park_app/views/pages/main_page.dart';
import 'package:park_app/views/pages/onboarding/onboarding_page.dart';

import '../views/pages/register/login_page.dart';

class RegisterController extends GetxController {
  Future checkFirstSeen() async {
    final box = GetStorage();
    bool seen = (box.read(StorageKey.seen) ?? false);
    bool isLogin = (GetStorage().read(StorageKey.isLogin) ?? false);
    if (seen) {
      if (isLogin) {
        Get.off(const MainPage());
      } else {
        Get.off(const LoginPage());
      }
    } else {
      box.write(StorageKey.seen, true);
      Get.off(const OnBoardingPage());
    }
  }
}
