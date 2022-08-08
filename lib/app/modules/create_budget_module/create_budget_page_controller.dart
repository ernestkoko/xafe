import 'package:get/get.dart';

import './create_budget_page_provider.dart';

class CreateBudgetPageController extends GetxController {
  final CreateBudgetPageProvider _provider;

  CreateBudgetPageController(this._provider);

  final _name = "".obs;
  final _amount = "".obs;
  final loading = false.obs;

  Future<void> createBudget() async {
    loading.value = true;
    try {
      await _provider.createBudget(name: _name.value, amount: _amount.value);

      loading.value = false;
    } catch (error) {
      loading.value = false;
      rethrow;
    }
  }

  void onNameChanged(String name) => _name.value = name;

  void onAmountChanged(String amount) => _amount.value = amount;

  void popPage() {
    Get.back();
  }
}
