import 'package:get/get.dart';

import './add_expense_page_provider.dart';

class AddExpensePageController extends GetxController {
  AddExpensePageController(this._provider);

  final AddExpensePageProvider _provider;
  final loading = false.obs;

  final _expenseName = "".obs;
  final _expenseAmount = "".obs;

  Future<void> addExpense() async {
    loading.value = true;
    try {
      await _provider.addExpense(
          name: _expenseName.value, amount: _expenseAmount.value);
      loading.value = false;
    } catch (error) {

      loading.value = false;
      rethrow;
    }
  }

  void onAmountChanged(String amount) {
    _expenseAmount.value = amount;
  }

  void onNameChanged(String name) {
    _expenseName.value = name;
  }

  void popPage() {
    Get.back();
  }
}
