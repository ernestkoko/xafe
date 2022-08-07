import 'package:flutter/material.dart';
import 'package:xafe/app/widgets/custom_image_asset.dart';

import '../../core/theme/text_styles.dart';

class BottomSheetItem extends StatelessWidget {
  final String assetLink;
  final String title;
  final Function()? onClicked;

  const BottomSheetItem(
      {Key? key, required this.assetLink, required this.title, this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onClicked,
      icon: CustomImageAsset(
        assetLink: assetLink,
      ),
      label: Text(
        title,
        style: AppTextStyles.regular.copyWith(color: Colors.black),
      ),
    );
  }
}
