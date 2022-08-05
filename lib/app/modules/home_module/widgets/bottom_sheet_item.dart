import 'package:flutter/material.dart';

import '../../../../core/theme/text_styles.dart';

class BottomSheetItem extends StatelessWidget {
  final String assetLink;
  final String title;
  final Function()? onClicked;

  const BottomSheetItem({Key? key, required this.assetLink,required this.title, this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed:onClicked,
      icon: Image.asset(
        assetLink,
        height: 15,
        width: 15,
      ),
      label: Text(
        title,
        style: AppTextStyles.regular.copyWith(color: Colors.black),
      ),
    );
  }
}
