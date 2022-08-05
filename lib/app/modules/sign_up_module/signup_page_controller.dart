import 'package:get/get.dart';
import 'package:xafe/routes/routes.dart';

enum SignupFormState { name, email, code, password }

class SignupPageController extends GetxController {
  final signupFormState = SignupFormState.name.obs;
  final formTitle = "".obs;
  final formHint = "".obs;

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

  void onNextClicked() {
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
          //navigate
          Get.toNamed(AppRoutes.signinPage);
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
