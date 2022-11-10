import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/theme/dark_theme.dart';
import 'package:whatsap_clone/common/theme/light_theme.dart';
import 'package:whatsap_clone/feature/auth/pages/login_screen.dart';
import 'package:whatsap_clone/feature/welcome/pages/welcome_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,

      home:LoginScreen(),
      
    );
  }
}
