import 'package:get/get.dart';

import './budget_details_page_controller.dart';

class BudgetDetailsPageBidning extends Bindings {
  @override
  void dependencies() {
    Get.put(BudgetDetailsPageController());
  }
}
