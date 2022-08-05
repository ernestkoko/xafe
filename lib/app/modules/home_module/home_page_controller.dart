import 'package:get/get.dart';
import 'package:xafe/routes/routes.dart';

class HomePageController extends GetxController {
  onCreateClicked() {}

<<<<<<< HEAD
  onCreateClicked(){

  }

  void navigateToAddExpense(){
    Get.back();
=======
  void navigateToAddExpense() {
>>>>>>> create_budget
    Get.toNamed(AppRoutes.addExpensePage);
  }

  void navigateToCreateBudget() {
    Get.back();
    Get.toNamed(AppRoutes.createBudgetPage);
  }
  ///Navigate to budget page
void navigateToBudgetPage(){
    Get.toNamed(AppRoutes.budgetPage);
}

  void navigateToAddSpending() {}
}
