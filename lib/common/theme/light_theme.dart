import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsap_clone/common/utils/coloors.dart';

import '../extension/custom_theme_extension.dart';

ThemeData lightTheme(){
  final  ThemeData base = ThemeData.light();
  return base.copyWith(
    backgroundColor: Coloors.backgrounLIght,
    scaffoldBackgroundColor: Coloors.backgrounLIght,
     extensions: [
      CustomThemeExtension.lightMode,
    ],
     appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    )
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
           backgroundColor: Coloors.greenDark,
          foregroundColor: Coloors.backgrounLIght,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent

      )
    ),
     bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Coloors.backgrounLIght,
      modalBackgroundColor: Coloors.backgrounLIght,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20)
        )
      )
    )
  );
}