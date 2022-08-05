import 'package:flutter/material.dart';

class CustomImageAsset extends StatelessWidget {
  final String assetLink;

  const CustomImageAsset({Key? key, required this.assetLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetLink,
      height: 15,width: 15,
      errorBuilder: (ctx, o, trace) => const Icon(Icons.error, color: Colors.red,),
    );
  }
}
