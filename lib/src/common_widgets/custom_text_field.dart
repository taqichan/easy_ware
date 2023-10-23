import 'package:flutter/material.dart';
import 'package:easy_ware/src/thme_manager/color_manager.dart';
import 'package:easy_ware/src/thme_manager/style_manager.dart';
import 'package:easy_ware/src/thme_manager/values_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelName,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
  });

  final String labelName;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: getWhiteTextStyle(),
        ),
        const SizedBox(
          height: AppSize.s8,
        ),
        TextField(
          controller: controller,
          obscureText: obscureText,
          style: getWhiteTextStyle(),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: getBlack30TextStyle(),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p30,
              vertical: AppPadding.p16,
            ),
            fillColor: ColorManager.secondary,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s50),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(
          height: AppSize.s16,
        )
      ],
    );
  }
}
