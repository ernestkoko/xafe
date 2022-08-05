import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAnalyses extends StatelessWidget {
  final String? title;
  final String? amount;

  const CustomAnalyses({Key? key, this.title, this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: Get.width * 0.15,
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(10)))),
        ),
        Text(title!),
        Text("\$${amount}")
      ],
    );
  }
}
