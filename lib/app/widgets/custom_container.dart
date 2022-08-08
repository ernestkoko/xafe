import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color? backgroundColor;
  final Color? childColor;
  final double? childWidth;
  final double? parentWidth;
  final double? height;
  final bool? innerCurve;

  const CustomContainer(
      {Key? key,
      this.backgroundColor,
      this.childColor,
      this.childWidth,
      this.parentWidth,
      this.height,
      this.innerCurve})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: parentWidth,
        height: height ?? 15,
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      Container(
        width: childWidth,
        height: height ?? 15,
        alignment: Alignment.centerLeft,
        decoration: ShapeDecoration(
          color: childColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(10),
              bottomLeft: const Radius.circular(10),
              topRight: innerCurve != null && innerCurve == true
                  ? const Radius.circular(10)
                  : const Radius.circular(0),
              bottomRight: innerCurve != null && innerCurve == true
                  ? const Radius.circular(10)
                  : const Radius.circular(0),
            ),
          ),
        ),
      ),
    ]);
  }
}
