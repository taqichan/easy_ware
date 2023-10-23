import 'package:flutter/material.dart';
import 'package:easy_ware/src/thme_manager/asset_image_icon_manager.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 143,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('${AssetImageIconManager.assetPath}/logo.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
