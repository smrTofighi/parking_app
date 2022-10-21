import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/constant/storage.dart';
import 'package:park_app/views/screens/main_screen.dart';
import 'package:park_app/views/screens/onboarding/onboarding_screen.dart';

import '../views/screens/register/login_screen.dart';

class RegisterController extends GetxController {
  Future checkFirstSeen() async {
    final box = GetStorage();
    bool seen = (box.read(StorageKey.seen) ?? false);
    bool isLogin = (GetStorage().read(StorageKey.isLogin) ?? false);
    if (seen) {
      if (isLogin) {
        Get.off(const MainScreen());
      } else {
        Get.off(const LoginScreen());
      }
    } else {
      box.write(StorageKey.seen, true);
      Get.off(const OnBoardingScreen());
    }
  }
}
