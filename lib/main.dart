import 'package:flutter/material.dart';
import 'package:whatsap_clone/feature/welcome/pages/welcome_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData.dark(),
      home: const WelcomeScreen(),
      
    );
  }
}