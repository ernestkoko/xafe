import 'package:get/get.dart';
import 'package:xafe/routes/routes.dart';

class LandingPageController extends GetxController {
  ///Navigate to singup page
  void navigateToSignupPage() {
    Get.offAndToNamed(AppRoutes.signupPage);
  }
  void navigateToSigninPage() {
    Get.offAndToNamed(AppRoutes.signinPage);
  }

}
