import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xafe/app/modules/add_expense_module/add_expense_page_controller.dart';
import 'package:xafe/app/modules/signin_module/custom_text_field.dart';
import 'package:xafe/app/widgets/app_bar.dart';
import 'package:xafe/app/widgets/button.dart';
import 'package:xafe/app/widgets/space.dart';
import 'package:xafe/core/theme/text_styles.dart';

class AddExpensePage extends GetView<AddExpensePageController> {
  const AddExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: controller.popPage,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Positioned(
              child: ListView(

                children: [
                  Text(
                    "Add an expense",
                    style: AppTextStyles.regularBold.copyWith(fontSize: 24),
                  ),
                  Space.Y(15),
                  const CustomTextField(
                    hintText: "Expense amount",
                  ),
                  Space.Y(8),
                  CustomTextField(
                    onIconPressed: () {},
                    hintText: "Select category",
                    icon: Image.asset(
                      "assets/img/dropdown.png",
                      color: Colors.black,
                      height: 15,
                      width: 15,
                    ),
                  ),
                  Space.Y(8),
                  const CustomTextField(
                    hintText: "Expense name",
                  ),
                  Space.Y(8),
                  const CustomTextField(
                    hintText: "date (dd/mm/yy)",
                  )
                ],
              ),
            ),
           const  Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: CustomButton("Add Expense"),
            )
          ],
        ),
      ),
    );
  }
}
