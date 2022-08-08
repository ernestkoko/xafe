import 'package:get/get.dart';
import 'package:xafe/app/modules/sign_up_module/sign_up_page_provider.dart';

import '../../../routes/routes.dart';

enum SignupFormState { name, email, code, password }

class SignupPageController extends GetxController {
  SignupPageController(this._provider);

  final SignUpPageProvider _provider;

  final signupFormState = SignupFormState.name.obs;
  final formTitle = "".obs;
  final formHint = "".obs;
  final _email = "".obs;
  final _password = ''.obs;
  final _name = ''.obs;

  final loading = false.obs;

  @override
  void onInit() {
    super.onInit();

    initState();
  }

  void initState() {
    signupFormState.value = SignupFormState.name;
    formTitle.value = "What's your name?";
    formHint.value = "Enter your first and last name";
  }

  onTextChanged(String text) {
    print(text);
    switch (signupFormState.value) {
      case SignupFormState.name:
        _name.value = text;
        break;

      case SignupFormState.email:
        _email.value = text;
        break;

      case SignupFormState.code:
        break;

      case SignupFormState.password:
        _password.value = text;
        break;
    }
  }

  Future<void> signUpWithEmailAndPassword() async {
    loading.value = true;
    try {
      await _provider.signupWithEmailAndPassword(
          email: _email.value, password: _password.value);
      loading.value = false;
      //navigates
      Get.offAndToNamed(AppRoutes.homePage);
    } catch (error) {
      print(error);
      loading.value = false;
    }
  }

  void onNextClicked() async {
    switch (signupFormState.value) {
      case SignupFormState.name:
        {
          signupFormState.value = SignupFormState.email;
          setEmailText();
        }
        break;
      case SignupFormState.email:
        {
          signupFormState.value = SignupFormState.code;
          setCodeText();
        }
        break;
      case SignupFormState.code:
        {
          signupFormState.value = SignupFormState.password;
          setPasswordText();
        }
        break;
      case SignupFormState.password:
        {
          try {
            await signUpWithEmailAndPassword();
          } catch (error) {

          }
        }
        break;
    }
  }

  ///onBackpressed
  void onBackPressed() {
    switch (signupFormState.value) {
      case SignupFormState.password:
        {
          signupFormState.value = SignupFormState.code;
          setCodeText();
        }
        break;
      case SignupFormState.code:
        {
          signupFormState.value = SignupFormState.email;
          setEmailText();
        }
        break;
      case SignupFormState.email:
        {
          signupFormState.value = SignupFormState.name;
          initState();
        }
        break;
      case SignupFormState.name:
        {}
        break;
    }
  }

  setEmailText() {
    formTitle.value = "What's your email?";
    formHint.value = "Enter your email address";
  }

  setCodeText() {
    formTitle.value = "Enter the code";
    formHint.value = "Enter the code sent to your email address";
  }

  setPasswordText() {
    formTitle.value = "Enter a password";
    formHint.value = "Enter password";
  }
}
