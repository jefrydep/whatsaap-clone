import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/utils/coloors.dart';

ThemeData darkTheme(){
  final  ThemeData base = ThemeData.dark();
  return base.copyWith(
    backgroundColor: Coloors.backgrounDark,
    scaffoldBackgroundColor: Coloors.backgrounDark
  );
}