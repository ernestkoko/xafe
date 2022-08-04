import 'package:get/get.dart';
import 'package:xafe/app/modules/signin_module/signin_page_controller.dart';

class SigninPageBinding extends Bindings{
  @override
  void dependencies() {
  Get.put(SigninPageController());
  }

}