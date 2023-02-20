import 'package:flutter/material.dart';
import 'package:uplabs_designs/schedule_management_platform/screens/main_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uplabs Designs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MainMenuView(),
    );
  }
}