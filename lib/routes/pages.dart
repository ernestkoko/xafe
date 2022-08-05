import 'package:get/get.dart';
import 'package:xafe/app/modules/add_expense_module/add_expense_page.dart';
import 'package:xafe/app/modules/add_expense_module/add_expense_page_binding.dart';
import 'package:xafe/app/modules/budget_module/budget_page.dart';
import 'package:xafe/app/modules/budget_module/budget_page_binding.dart';
import 'package:xafe/app/modules/create_budget_module/create_budget_page.dart';
import 'package:xafe/app/modules/create_budget_module/create_budget_page_binding.dart';
import 'package:xafe/app/modules/home_module/home_page.dart';
import 'package:xafe/app/modules/home_module/home_page_binding.dart';
import 'package:xafe/app/modules/landing_module/landing_page.dart';
import 'package:xafe/app/modules/landing_module/landing_page_binding.dart';
import 'package:xafe/app/modules/sign_up_module/sign_up_page.dart';
import 'package:xafe/app/modules/sign_up_module/singup_page_binding.dart';
import 'package:xafe/app/modules/signin_module/signin_page.dart';
import 'package:xafe/app/modules/signin_module/signin_page_binding.dart';
import 'package:xafe/routes/routes.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
        name: AppRoutes.landingPage,
        page: () => LandingPage(),
        binding: LandingPageBinding()),
    GetPage(
        name: AppRoutes.signupPage,
        page: () => SignUpPage(),
        binding: SignupPageBinding()),
    GetPage(
      name: AppRoutes.signinPage,
      page: () => SigninPage(),
      binding: SigninPageBinding(),
    ),
    GetPage(
      name: AppRoutes.homePage,
      page: () => HomePage(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: AppRoutes.addExpensePage,
      page: () => AddExpensePage(),
      binding: AddExpensePageBinding(),
    ),
    GetPage(
      name: AppRoutes.budgetPage,
      page: () => BudgetPage(),
      binding: BudgetPageBinding(),
    ),
    GetPage(
      name: AppRoutes.createBudgetPage,
      page: () => CreateBudgetPage(),
      binding: CreateBudgetPageBinding(),
    ),
  ];
}
