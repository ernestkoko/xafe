
import 'package:get/get.dart';
import 'package:xafe/app/modules/budget_module/budget_page_controller.dart';
import 'package:xafe/app/modules/budget_module/budget_page_provider.dart';

class BudgetPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(BudgetPageController(BudgetPageProvider()));
  }

}