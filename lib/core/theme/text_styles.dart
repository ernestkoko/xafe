import 'package:flutter/material.dart';

abstract class AppTextStyles {
  AppTextStyles._();

  static const bigRegular =
      TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
  static const regular = TextStyle(fontSize: 14);
  static const regularBold = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

  static const smallRegular = TextStyle(fontSize: 10);
  static const smallRegularBold =
      TextStyle(fontSize: 10, fontWeight: FontWeight.bold);
}
