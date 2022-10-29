import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:park_app/core/values/storage.dart';
import 'package:park_app/routes/pages.dart';

class RegisterController extends GetxController {
  Future checkFirstSeen() async {
    final box = GetStorage();
    bool seen = (box.read(StorageKey.seen) ?? false);
    bool isLogin = (GetStorage().read(StorageKey.isLogin) ?? false);
    if (seen) {
      if (isLogin) {
        Get.offNamed(NameRoutes.routeMainPage);
      } else {
        Get.offNamed(NameRoutes.routeSigninPage);
      }
    } else {
      box.write(StorageKey.seen, true);
      Get.offNamed(NameRoutes.routeOnboardingPage);
    }
  }
}
