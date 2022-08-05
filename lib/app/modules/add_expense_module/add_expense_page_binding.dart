import 'package:get/get.dart';
import 'package:xafe/app/modules/add_expense_module/add_expense_page_controller.dart';

class AddExpensePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AddExpensePageController());
  }
}
