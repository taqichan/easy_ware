import 'package:flutter/material.dart';
import 'package:easy_ware/src/thme_manager/color_manager.dart';
import 'package:easy_ware/src/thme_manager/font_manager.dart';

ThemeData getAppThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.primary,
      elevation: 0,
    ),
    fontFamily: FontFamiliyConstant.fontFamily,
  );
}
