import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color? backgroundColor;
  final Color? childColor;
  final double? childWidth;
  final double? parentWidth;

  const CustomContainer(
      {Key? key,
      this.backgroundColor,
      this.childColor,
      this.childWidth,
      this.parentWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: parentWidth,
        height: 15,
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      Container(
        width: childWidth,
        height: 15,
        alignment: Alignment.centerLeft,
        decoration: ShapeDecoration(
          color: childColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          ),
        ),
      ),
    ]);
  }
}
