import 'package:xafe/app/data/providers/firebase_provider.dart';

class SigninPageProvider {
  final firebase = FirebaseProvider.instance;

  Future<void> signinWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await firebase.signinWithEmailAndPassword(
          email: email, password: password);
    } catch (error) {
      rethrow;
    }
  }
}
