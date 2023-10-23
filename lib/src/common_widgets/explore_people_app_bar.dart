import 'dart:io';

import 'package:easy_ware/src/features/authentication/data/data_user_account.dart';
import 'package:easy_ware/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:easy_ware/src/common_widgets/logo_widgets.dart';
import 'package:easy_ware/src/thme_manager/asset_image_icon_manager.dart';

class ExplorePeopleAppBar extends StatelessWidget {
  const ExplorePeopleAppBar({super.key, this.imagePath});

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            UserDataRegister.userAccountLogout();
            Navigator.pushNamedAndRemoveUntil(
              context,
              SignUpScreen.routeName,
              (route) => false,
            );
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imagePath != null
                    ? FileImage(File(imagePath!))
                    : AssetImage(
                        '${AssetImageIconManager.assetPath}/no_pp.png',
                      ) as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const LogoWidget(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/people_loved_screen');
          },
          child: Container(
            height: 25,
            width: 25,
            decoration: const BoxDecoration(
              // shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  '${AssetImageIconManager.assetPath}/chat.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
