import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xafe/app/modules/sign_up_module/signup_page_controller.dart';
import 'package:xafe/app/widgets/app_bar.dart';
import 'package:xafe/app/widgets/button.dart';
import 'package:xafe/app/widgets/custom_container.dart';
import 'package:xafe/app/widgets/space.dart';
import 'package:xafe/core/theme/text_styles.dart';

class SignUpPage extends GetView<SignupPageController> {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Sign up",
        onPressed: controller.onBackPressed,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Stack(children: [
          Positioned(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    controller.formTitle.value,
                    style:
                        AppTextStyles.bigRegular.copyWith(color: Colors.black),
                  ),
                ),
                Obx(
                  () => TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: controller.formHint.value,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 2,
            right: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomContainer(
                    backgroundColor: Colors.grey[200],
                    childColor: Colors.black,
                    childWidth: Get.width * 0.2,
                    parentWidth: Get.width,
                  ),
                  Space.Y(16),
                  CustomButton(
                    'Next',
                    onPressed: controller.onNextClicked,
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
