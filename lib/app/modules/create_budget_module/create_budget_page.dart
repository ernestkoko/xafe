import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xafe/app/modules/create_budget_module/create_budget_page_controller.dart';
import 'package:xafe/app/modules/signin_module/custom_text_field.dart';
import 'package:xafe/app/widgets/app_bar.dart';
import 'package:xafe/app/widgets/button.dart';

import '../../../core/theme/text_styles.dart';
import '../../widgets/space.dart';

class CreateBudgetPage extends GetView<CreateBudgetPageController> {
  const CreateBudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(onPressed: controller.popPage,),
      body: Container(
        padding: const EdgeInsets.all(10),
        height: Get.height,
        child: Stack(
        
          children: [
            Positioned(

              child: ListView(
                shrinkWrap: true,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create a budget",
                    style: AppTextStyles.regularBold.copyWith(fontSize: 24),
                  ),
                  Space.Y(15),
                  const CustomTextField(
                    hintText: "Budget name",
                  ),
                  Space.Y(8),
                  const CustomTextField(
                    hintText: "Budget amount",
                  ),
                  Space.Y(8),
                  CustomTextField(
                    onIconPressed: () {},
                    hintText: "Choose interval",
                    icon: Image.asset(
                      "assets/img/dropdown.png",
                      color: Colors.black,
                      height: 15,
                      width: 15,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 2,
              left: 0,
              right: 0,
              child: CustomButton("Create budget"),
            )
          ],
        ),
      ),
    );
  }
}
