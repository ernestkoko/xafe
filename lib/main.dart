import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xafe/routes/pages.dart';
import 'package:xafe/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Xafe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.landingPage,
    );
  }
}
