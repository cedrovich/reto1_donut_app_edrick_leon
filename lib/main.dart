import 'package:flutter/material.dart';
import 'package:reto1_donut_app_edrick_leon/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    ); // MaterialApp
  }
}
