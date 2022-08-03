import 'package:get/get.dart';
import 'package:xafe/app/modules/landing_module/landing_page.dart';
import 'package:xafe/routes/routes.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: AppRoutes.landingPage,
      page: () => LandingPage(),
    )
  ];
}
