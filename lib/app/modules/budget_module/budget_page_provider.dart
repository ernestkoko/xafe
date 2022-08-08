import 'package:xafe/app/data/models/budget_model.dart';
import 'package:xafe/app/data/providers/firebase_provider.dart';

class BudgetPageProvider {
  Stream<Budget> fetchBudgets()  {
    try {
      final budgets =  FirebaseProvider.instance.fetchBudgets();
      return budgets;
    } catch (error) {
      rethrow;
    }
  }
}
