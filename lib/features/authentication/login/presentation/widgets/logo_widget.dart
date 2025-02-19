import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/constants/asset_images.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Image.asset(AssetImages.logo)
    ,height: 300,width: 280,alignment: Alignment.topCenter);
  }
}