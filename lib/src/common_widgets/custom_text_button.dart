import 'package:flutter/material.dart';
import 'package:easy_ware/src/thme_manager/style_manager.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: getBlack30TextStyle()
            .copyWith(decoration: TextDecoration.underline),
      ),
    );
  }
}
