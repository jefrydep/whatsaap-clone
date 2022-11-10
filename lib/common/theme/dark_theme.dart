import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsap_clone/common/utils/coloors.dart';

ThemeData darkTheme(){
  final  ThemeData base = ThemeData.dark();
  return base.copyWith(
    backgroundColor: Coloors.backgrounDark,
    scaffoldBackgroundColor: Coloors.backgrounDark,
    extensions: [
      CustomThemeExtension.darkMode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
           backgroundColor: Coloors.greenDark,
          foregroundColor: const Color(0xff111b21),
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent

      )
    )
  );
}