import 'package:get/get.dart';
import 'package:xafe/app/modules/create_budget_module/create_budget_page_controller.dart';
import 'package:xafe/app/modules/create_budget_module/create_budget_page_provider.dart';

class CreateBudgetPageBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(CreateBudgetPageController(CreateBudgetPageProvider()));
  }

}