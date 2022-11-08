import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/utils/coloors.dart';

ThemeData lightTheme(){
  final  ThemeData base = ThemeData.light();
  return base.copyWith(
    backgroundColor: Coloors.backgrounLIght,
    scaffoldBackgroundColor: Coloors.backgrounLIght
  );
}