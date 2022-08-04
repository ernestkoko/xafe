import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xafe/app/modules/signin_module/custom_text_field.dart';
import 'package:xafe/app/widgets/app_bar.dart';
import 'package:xafe/app/widgets/button.dart';
import 'package:xafe/app/widgets/space.dart';
import 'package:xafe/core/theme/text_styles.dart';

import './signin_page_controller.dart';

class SigninPage extends GetView<SigninPageController> {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: null,
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Stack(
          children: [
            Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back",
                    style: AppTextStyles.regularBold.copyWith(fontSize: 20),
                  ),
                  Text(
                    "Login to your account",
                    style: AppTextStyles.regular.copyWith(color: Colors.grey),
                  ),
                  Space.Y(10),
                  CustomTextField(
                    hintText: "email address",
                  ),
                  Space.Y(6),
                  CustomTextField(
                    hintText: ".....",
                    onIconPressed: (){

                    },
                    icon: Image.asset(
                      "assets/img/eye.png",
                      width: 20,
                      height: 20,

                    ),
                  ),
                  Space.Y(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color?>(
                                Colors.grey[200]),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                ),
                              ),
                            ),
                          ),
                          child: Text(
                            "Forgot password ?",
                            style: AppTextStyles.smallRegularBold
                                .copyWith(color: Colors.black),
                          )),
                    ],
                  )
                ],
              ),
            ),
            const Positioned(
              bottom: 2,
              left: 2,
              right: 2,
              child: CustomButton("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
