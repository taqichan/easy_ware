import 'package:flutter/material.dart';

class CustomMatchButtonWidget extends StatelessWidget {
  const CustomMatchButtonWidget(
      {super.key,
      this.dimension = 50,
      required this.assetPath,
      required this.onTap});

  final double dimension;
  final String assetPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: dimension,
        width: dimension,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(assetPath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
