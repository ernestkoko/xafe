import 'package:get/get.dart';
import 'package:xafe/app/modules/sign_up_module/signup_page_controller.dart';

class SignupPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SignupPageController());
  }

}