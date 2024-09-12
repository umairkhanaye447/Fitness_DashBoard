import 'dart:io';

import 'package:fitness_dashboard_ui/Screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //   late bool isAndroid; // Define isAndroid as a class-level variable

  // @override
  // void initState() {
  //   super.initState();
  //   // Initialize isAndroid in the initState method
  //   isAndroid = Platform.isAndroid;
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'fitness_dashboard_ui',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF15131C),
          brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}
