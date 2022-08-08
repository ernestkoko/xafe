import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? icon;
  final Function(String)? onChanged;
  final Function()? onIconPressed;
  final TextInputType? keyboardType;

  const CustomTextField(
      {Key? key,
      this.hintText,
      this.icon,
      this.onIconPressed,
      this.onChanged,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          filled: true,
          fillColor: Colors.grey[250],
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          suffixIcon: icon != null
              ? IconButton(
                  onPressed: onIconPressed,
                  icon: icon!,
                )
              : null),
    );
  }
}
