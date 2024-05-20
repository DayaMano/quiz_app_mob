import 'package:flutter/material.dart';

import "Pages/HomePage.dart";
import "Utils/Constant.dart" as constant;

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
