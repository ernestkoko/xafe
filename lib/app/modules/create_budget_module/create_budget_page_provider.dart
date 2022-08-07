import 'package:xafe/app/data/providers/firebase_provider.dart';

class CreateBudgetPageProvider {
  Future<void> createBudget(
      {required String name, required String amount}) async {
    try {
      await FirebaseProvider.instance.addBudget(name: name, amount: amount);
    } catch (error) {
      rethrow;
    }
  }
}
