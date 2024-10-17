import 'package:flutter/material.dart';
import 'package:reto1_donut_app_edrick_leon/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
    theme: ThemeData(
      tabBarTheme: const TabBarTheme(
        indicatorColor: Colors.pink,
      ),
    ),
  );
}
}

