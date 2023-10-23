import 'package:flutter/material.dart';
import 'package:easy_ware/src/thme_manager/font_manager.dart';
import 'package:easy_ware/src/thme_manager/style_manager.dart';

class CustomBottomWidget extends StatelessWidget {
  const CustomBottomWidget(
      {super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFFEA887B),
                Color(0xFFCE92E3),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              title,
              style: getWhiteTextStyle(fontWeight: FontWeightManager.semiBold),
            ),
          ),
        ),
      ),
    );
  }
}
