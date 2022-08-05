import 'package:get/get.dart';
import 'package:xafe/routes/routes.dart';

class HomePageController extends GetxController {
  onCreateClicked() {}

  void navigateToAddExpense() {
    Get.toNamed(AppRoutes.addExpensePage);
  }

  void navigateToCreateBudget() {
    Get.back();
    Get.toNamed(AppRoutes.createBudgetPage);
  }

  void navigateToAddSpending() {}
}
