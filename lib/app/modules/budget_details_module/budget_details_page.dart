import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xafe/app/data/models/budget_model.dart';
import 'package:xafe/app/widgets/app_bar.dart';
import 'package:xafe/app/widgets/custom_image_asset.dart';
import 'package:xafe/app/widgets/custom_line.dart';
import 'package:xafe/core/theme/text_styles.dart';

import '../../widgets/bottom_sheet_item.dart';
import '../../widgets/custom_container.dart';

class BudgetDetailsPage extends StatelessWidget {
  const BudgetDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final budget = Get.arguments as Budget;
    return Scaffold(
      backgroundColor: Get.theme.primaryColor,
      appBar: CustomAppBar(
        title: budget.budgetName,
        leadingColor: Colors.white,
        titleColor: Colors.white,
        trailingWidget: [
          IconButton(
            iconSize: 20,
            onPressed: showBottomSheet,
            color: Colors.white,
            icon: CustomImageAsset(
              assetLink: "assets/img/add.png",
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(children: [
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              height: Get.height * 0.19,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "\$ 200.00",
                        style: AppTextStyles.bigRegular,
                      ),
                    ),
                    CustomContainer(
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      childColor: Colors.white,
                      childWidth: Get.width * 0.2,
                      height: 8,
                      parentWidth: Get.width,
                      innerCurve: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "\$100/month",
                          style: AppTextStyles.regular
                              .copyWith(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 0,
              height: Get.height * 0.7,
              left: 0,
              right: 0,
              child: Container(
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ))
        ]),
      ),
    );
  }

  showBottomSheet(){
    ///Bottom sheet
    Get.bottomSheet(
      SizedBox(
        height: Get.height * 0.4,
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: CustomLine(
                  width: 40,
                  color: Colors.grey,
                ),
              ),
            ),
            BottomSheetItem(
                // onClicked:
                // controller.navigateToAddExpense,
                assetLink:
                "assets/img/add_expense.png",
                title: "Add an expense"),
            const Divider(),
            BottomSheetItem(
                // onClicked:
                // controller.navigateToCreateBudget,
                assetLink:
                "assets/img/create_budget.png",
                title: "Create Budget"),
            const Divider(),
            BottomSheetItem(
                // onClicked:
                // controller.navigateToAddSpending,
                assetLink:
                "assets/img/delete.png",
                title: "Add a spending category"),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }
}
