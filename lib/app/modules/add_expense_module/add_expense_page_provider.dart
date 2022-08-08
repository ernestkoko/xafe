import 'package:xafe/app/data/providers/firebase_provider.dart';

class AddExpensePageProvider {
  Future<void> addExpense(
      {required String name, required String amount}) async {
    try {
      await FirebaseProvider.instance.addExpense(name: name, amount: amount);
    } catch (error) {
      rethrow;
    }
  }
}
