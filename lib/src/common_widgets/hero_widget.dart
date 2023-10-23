import 'package:flutter/material.dart';
import 'package:easy_ware/src/thme_manager/asset_image_icon_manager.dart';
import 'package:easy_ware/src/thme_manager/values_manager.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: AppMargin.m20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s20)),
        image: DecorationImage(
          image: AssetImage('${AssetImageIconManager.assetPath}/hero.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
