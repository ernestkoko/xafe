import 'package:get/get.dart';
import 'package:xafe/app/data/models/budget_model.dart';
import 'package:xafe/routes/routes.dart';

import './budget_page_provider.dart';

class BudgetPageController extends GetxController
    with StateMixin<List<Budget>> {
  final BudgetPageProvider _provider;

  BudgetPageController(this._provider);

  //final budgets = Budget;
  final loading = false.obs;
  final budgets = <Budget>[].obs;

  @override
  onInit() {
    super.onInit();
  }

  @override
  onReady() {
    super.onReady();
    _fetchBudgets();
  }

  void _fetchBudgets() {
    change(null, status: RxStatus.loading());

    _provider.fetchBudgets().listen((budget) {
      budgets.add(budget);
      change(budgets.value, status: RxStatus.success());
    }, onDone: () {
      print("onDone");
    }, onError: (error, stackTrace) {
      change(null, status: RxStatus.error(error));
    });

    Future.delayed(const Duration(seconds: 10), () {
      if (budgets.isEmpty) {
        change(null, status: RxStatus.empty());
      }
    });
  }

  void navigateToHomePage() {
    Get.offNamed(AppRoutes.homePage);
  }

  void navigateToNewBudget() {
    budgets.value = [];
    Get.toNamed(AppRoutes.createBudgetPage);
  }

  void navigateToBudgetDetailsPage(Budget data) {
    Get.toNamed(AppRoutes.budgetDetailsPage, arguments: data);
  }
}
