import 'package:get/get.dart';
import 'package:xafe/routes/routes.dart';

class HomePageController extends GetxController {
  onCreateClicked() {}


  void navigateToAddExpense() {

    Get.back();

    Get.toNamed(AppRoutes.addExpensePage);
  }

  void navigateToCreateBudget() {
    Get.back();
    Get.toNamed(AppRoutes.createBudgetPage);
  }

  ///Navigate to budget page
  void navigateToBudgetPage() {
    Get.toNamed(AppRoutes.budgetPage);
  }

  void navigateToAddSpending() {}
}
