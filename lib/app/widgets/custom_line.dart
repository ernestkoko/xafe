import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  final Color? color;
  final double? width;
  final double? height;

  const CustomLine({Key? key, this.color, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 3,
      width: width,
      decoration: ShapeDecoration(
        color: color,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
