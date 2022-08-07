import 'package:xafe/app/data/providers/firebase_provider.dart';

class SignUpPageProvider {
  final auth = FirebaseProvider.instance;
  Future<void> signupWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
     await  auth.signupWithEmailAndPassword(email: email, password: password);
    } catch (error) {
      rethrow;
    }
  }
}
