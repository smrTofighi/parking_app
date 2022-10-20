import 'package:get/get.dart';
import 'package:park_app/controllers/register_controller.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RegisterController());
  }
}
