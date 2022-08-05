import 'package:flutter/material.dart';
import 'package:xafe/app/modules/signin_module/custom_text_field.dart';
import 'package:xafe/app/widgets/app_bar.dart';
import 'package:xafe/app/widgets/button.dart';
import 'package:xafe/app/widgets/space.dart';
import 'package:xafe/core/theme/text_styles.dart';

class AddExpensePage extends StatelessWidget {
  const AddExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
            Row(
              children: const [
                Expanded(child: CustomButton("Add Expense")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
