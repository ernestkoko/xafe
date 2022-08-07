import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xafe/app/modules/landing_module/landing_page_cotroller.dart';
import 'package:xafe/app/widgets/button.dart';
import 'package:xafe/app/widgets/space.dart';
import 'package:xafe/core/theme/text_styles.dart';

class LandingPage extends GetView<LandingPageController> {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black38,
        width: Get.width,
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                const Text(
                  "xafe",
                  style: AppTextStyles.bigRegular,
                ),
                Space.Y(12),
                Text(
                  "Smart Budgeting",
                  style:
                      AppTextStyles.regularBold.copyWith(color: Colors.white),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomButton(
                  "Login",
                  onPressed: controller.navigateToSigninPage,
                ),
                Space.Y(10),
                TextButton(
                  onPressed: controller.navigateToSignupPage,
                  child: RichText(
                    text: TextSpan(
                        text: "New here? ",
                        style:
                            AppTextStyles.regular.copyWith(color: Colors.white),
                        children: [
                          TextSpan(
                              text: "Create account",
                              style: AppTextStyles.regularBold
                                  .copyWith(color: Colors.white))
                        ]),
                  ),
                ),
                // Center(
                //     child: GestureDetector(
                //   onTap: controller.navigateToSignupPage,
                //   child: RichText(
                //     text: TextSpan(
                //         text: "New here? ",
                //         style:
                //             AppTextStyles.regular.copyWith(color: Colors.white),
                //         children: [
                //           TextSpan(
                //               text: "Create account",
                //               style: AppTextStyles.regularBold
                //                   .copyWith(color: Colors.white))
                //         ]),
                //   ),
                // )),
                Space.Y(30),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "By continuing you agree to Xafe's terms of use and privacy policy",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.smallRegular
                          .copyWith(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
