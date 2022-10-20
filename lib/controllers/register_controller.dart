import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/constant/storage.dart';
import 'package:park_app/views/screens/main_screen.dart';
import 'package:park_app/views/screens/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = (prefs.getBool('seen') ?? false);

    if (seen) {
      Get.off(const MainScreen());
    } else {
      await prefs.setBool('seen', true);
      Get.off(const OnBoardingScreen());
    }
  }

  Future checkFirstSeen2() async {
    final box = GetStorage();
    bool seen = (box.read('seem') ?? false);
    if (seen) {
      Get.off(const MainScreen());
    } else {
      box.write('seem', true);
      Get.off(const OnBoardingScreen());
    }
  }
}
