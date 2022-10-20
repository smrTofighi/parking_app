import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/constant/storage.dart';
import 'package:park_app/views/screens/login_screen.dart';
import 'package:park_app/views/screens/main_screen.dart';
import 'package:park_app/views/screens/onboarding_screen.dart';

class RegisterController extends GetxController {
  Future checkFirstSeen() async {
    final box = GetStorage();
    bool seen = (box.read(StorageKey.seen) ?? false);
    if (seen) {
      bool isLogin = (GetStorage().read(StorageKey.isLogin) ?? false);
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
