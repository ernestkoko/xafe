import 'package:get/get.dart';
import 'package:xafe/app/modules/landing_module/landing_page_cotroller.dart';

class LandingPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(LandingPageController());
  }

}