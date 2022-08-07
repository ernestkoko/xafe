import 'package:flutter/material.dart';
import 'package:xafe/core/theme/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onPressed;
  final String? title;
  final Color? leadingColor;
  final Color? titleColor;
  final List<Widget>? trailingWidget;

  const CustomAppBar(
      {Key? key,
      this.onPressed,
      this.title,

      this.trailingWidget,
      this.leadingColor, this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: leadingColor ?? Colors.black,
        ),
      ),
      title: title != null
          ? Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Center(
                  child: Text(
                title ?? '',
                style: AppTextStyles.regular.copyWith(
                  color:titleColor?? Colors.black,
                ),
              )),
            )
          : null,
      actions: trailingWidget,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
