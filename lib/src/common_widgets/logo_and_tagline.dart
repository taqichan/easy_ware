import 'package:flutter/material.dart';
import 'package:easy_ware/src/common_widgets/logo_widgets.dart';
import 'package:easy_ware/src/thme_manager/style_manager.dart';
import 'package:easy_ware/src/thme_manager/values_manager.dart';

class LogoAndTagline extends StatelessWidget {
  const LogoAndTagline({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const LogoWidget(),
          const SizedBox(height: AppSize.s12),
          Text(
            'Make hard to easy',
            style: getWhiteTextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
