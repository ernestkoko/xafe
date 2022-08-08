import 'package:get/get.dart';
import 'package:xafe/routes/routes.dart';

import './singin_page_provider.dart';

class SigninPageController extends GetxController {
  final SigninPageProvider _provider;

  SigninPageController(this._provider);

  final _email = ''.obs;
  final _password = ''.obs;
  final loading = false.obs;

  onEmailChanged(String text) {
    _email.value = text;
  }

  onPasswordChanged(String text) {
    _password.value = text;
  }

  Future<void> navigateToHomePage() async {
    loading.value = true;
    try {
      await _provider.signinWithEmailAndPassword(
          email: _email.value.trimRight().trimLeft(),
          password: _password.value.trimRight().trimLeft());
      loading.value = false;

      ///Navigate
      Get.offAndToNamed(AppRoutes.homePage);
    } catch (error) {
      loading.value = false;
      rethrow;
    }
  }
}
