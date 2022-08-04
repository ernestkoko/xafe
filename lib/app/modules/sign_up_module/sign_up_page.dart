import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xafe/app/widgets/app_bar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Sign up",
        ),
        body: Container(
          width: Get.width * 0.8,
          color: Colors.red,
          margin: EdgeInsets.all(20),

          child:const  LinearProgressIndicator(
            value: 0.4,
            minHeight: 8,

          ),
        ));
  }
}
