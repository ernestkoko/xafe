import 'package:get/get.dart';
import 'package:xafe/app/modules/signin_module/signin_page_controller.dart';
import 'package:xafe/app/modules/signin_module/singin_page_provider.dart';

class SigninPageBinding extends Bindings{
  @override
  void dependencies() {
  Get.put(SigninPageController(SigninPageProvider()));
  }

}