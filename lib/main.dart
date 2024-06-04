import 'package:flutter/material.dart';

import "package:quiz_app_mob/home/home_page.dart";
import "package:quiz_app_mob/shared/constant.dart" as constant;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      theme: ThemeData(
          colorScheme: const ColorScheme.dark(primary: Colors.white),
          useMaterial3: true),
      home: const HomePage(title: constant.appTitle),
    );
  }
}
