import 'package:flutter/material.dart';
import 'package:easy_ware/src/common_widgets/custom_match_button_widget.dart';
import 'package:easy_ware/src/thme_manager/asset_image_icon_manager.dart';

class ExplorePeopleButtonWidget extends StatelessWidget {
  const ExplorePeopleButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomMatchButtonWidget(
          assetPath: '${AssetImageIconManager.assetPath}/close_bg.png',
          onTap: () {},
        ),
        CustomMatchButtonWidget(
          dimension: 80,
          assetPath: '${AssetImageIconManager.assetPath}/match.png',
          onTap: () {},
        ),
        CustomMatchButtonWidget(
          assetPath: '${AssetImageIconManager.assetPath}/more.png',
          onTap: () {},
        ),
      ],
    );
  }
}
