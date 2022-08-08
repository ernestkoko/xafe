import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xafe/app/widgets/custom_image_asset.dart';
import 'package:xafe/app/widgets/space.dart';
import 'package:xafe/core/theme/text_styles.dart';

import './budget_page_controller.dart';
import '../../widgets/custom_line.dart';

class BudgetPage extends GetView<BudgetPageController> {
  BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.primaryColor,
      body: SafeArea(
        child: SizedBox(
          height: Get.height,
          child: Stack(children: [
            Positioned(
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: Get.height * 0.05, horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.laptop),
                    Space.X(6),
                    Text(
                      "Budgets",
                      style: AppTextStyles.regularBold
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: Get.height * 0.12,
                bottom: Get.height * 0.09,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: controller.obx(
                    (data) => GridView.builder(
                        shrinkWrap: true,
                        itemCount: data!.length + 1,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 1.5),
                        itemBuilder: (context, index) {
                          if (index + 1 == data.length + 1) {
                            return GestureDetector(
                              onTap: controller.navigateToNewBudget,
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                )),
                                color: Colors.white.withOpacity(0.5),
                                child: const Center(child: Icon(Icons.add)),
                              ),
                            );
                          }

                          return GestureDetector(
                            onTap: () {
                              controller
                                  .navigateToBudgetDetailsPage(data[index]);
                            },
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              )),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(data[index].budgetName),
                                    Text("\$${data[index].budgetAmount}/month"),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomLine(
                                        width: index / 20 * 100,
                                        height: 5,
                                        color: Colors.red,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                    onLoading: const Center(
                        child: CircularProgressIndicator(
                      color: Colors.white,
                    )),
                    onEmpty: GestureDetector(
                      onTap: controller.navigateToNewBudget,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        )),
                        color: Colors.white.withOpacity(0.5),
                        child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                          children:const  [
                             Text("Click here to add new budget"),
                            Center(child: Icon(Icons.add))
                          ],
                        )),
                      ),
                    ),
                    onError: (error) => const Center(
                      child: Text("Error occurred"),
                    ),
                  ),
                )),
            Positioned(
                bottom: 0,
                height: Get.height * 0.09,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Space.X(10),
                          GestureDetector(
                            onTap: controller.navigateToHomePage,
                            child: Column(
                              children: const [
                                CustomImageAsset(
                                    assetLink: "assets/img/home.png"),
                                Text("Home"),
                              ],
                            ),
                          ),
                          // Space.X(10),
                          Column(
                            children: const [
                              CustomImageAsset(
                                  assetLink: "assets/img/search.png"),
                              Text("Category"),
                            ],
                          ),
                          //Space.X(10),
                          Column(
                            children: const [
                              CustomImageAsset(
                                  assetLink: "assets/img/budget.png"),
                              Text("Budget"),
                            ],
                          ),
                          Space.X(10),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: CustomLine(
                          width: Get.width * 0.25,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
