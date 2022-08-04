import 'package:flutter/material.dart';
import 'package:xafe/core/theme/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onPressed;
  final String? title;

  const CustomAppBar({Key? key, this.onPressed, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,

      leading: IconButton(
        onPressed: onPressed,
        icon: const Icon(Icons.arrow_back_ios_outlined, color: Colors.black,),
      ),
      title: title != null
          ? Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Center(
                child: Text(
                title ?? '',
                style: AppTextStyles.regular.copyWith(color: Colors.black, ),
              )),
          )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
