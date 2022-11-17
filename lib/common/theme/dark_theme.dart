import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(fontSize: 18),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
           backgroundColor: Coloors.greenDark,
          foregroundColor: const Color(0xff111b21),
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent

      )
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Coloors.greyBackgroun,
      modalBackgroundColor: Coloors.greyBackgroun,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20)
        )
      )
    )
  );
}