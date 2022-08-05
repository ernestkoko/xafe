import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xafe/app/modules/home_module/home_page_controller.dart';
import 'package:xafe/app/modules/home_module/widgets/bottom_sheet_item.dart';
import 'package:xafe/app/modules/home_module/widgets/custom_analyses.dart';
import 'package:xafe/app/widgets/custom_line.dart';
import 'package:xafe/core/theme/text_styles.dart';

import '../../widgets/space.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              height: Get.height * 0.4,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          //height: 40,

                          decoration: ShapeDecoration(
                              color:
                                  Get.theme.primaryColorLight.withOpacity(0.2),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "This week",
                                  style: AppTextStyles.regular
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              IconButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {},
                                  color: Colors.white,
                                  icon: Image.asset(
                                    "assets/img/dropdown.png",
                                    height: 10,
                                    width: 10,
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)))),
                          child: IconButton(
                            onPressed: () {
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
                                          onClicked:
                                              controller.navigateToAddExpense,
                                          assetLink:
                                              "assets/img/add_expense.png",
                                          title: "Add an expense"),
                                      const Divider(),
                                      BottomSheetItem(
                                          onClicked:
                                              controller.navigateToCreateBudget,
                                          assetLink:
                                              "assets/img/create_budget.png",
                                          title: "Create Budget"),
                                      const Divider(),
                                      BottomSheetItem(
                                          onClicked:
                                              controller.navigateToAddSpending,
                                          assetLink:
                                              "assets/img/add_spending.png",
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
                            },
                            icon: Image.asset(
                              "assets/img/create.png",
                              height: 20,
                              width: 20,
                            ),
                            color: Colors.white,
                            focusColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomAnalyses(
                        title: "Expenses",
                        amount: "4,500.00",
                      ),
                      Space.X(Get.width * 0.09),
                      const CustomAnalyses(
                        title: "Income",
                        amount: "4,500.00",
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 8),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Space.Y(10),
                    CustomLine(
                      color: Colors.grey,
                      width: Get.width * 0.12,
                    ),
                    Space.Y(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _row(),
                        const Divider(),
                        _row(),
                        const Divider(),
                        _row(),
                        const Divider(),
                        _row(),
                      ],
                    ),
                    Space.Y(20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Material(
                              child: InkWell(
                                onTap: () {},
                                child: Column(
                                  children: const [
                                    Icon(Icons.home),
                                    Text("Home")
                                  ],
                                ),
                              ),
                            ),
                            Space.X(20),
                            Material(
                              child: InkWell(
                                onTap: () {},
                                child: Column(
                                  children: const [
                                    Icon(Icons.home),
                                    Text("Home"),
                                  ],
                                ),
                              ),
                            ),
                            Space.X(20),
                            Material(
                              child: InkWell(
                                onTap: () {},
                                child: Column(
                                  children: const [
                                    Icon(Icons.home),
                                    Text("Home")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Space.Y(20),
                        CustomLine(
                          color: Colors.black,
                          width: Get.width * 0.25,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _row() {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [Icon(Icons.food_bank), Text("Bill Payment")],
          ),
          const Text("\$5,000")
        ],
      ),
    );
  }
}
