import 'package:flutter/material.dart';
import 'package:reto1_donut_app_majo_ceh/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false, // Quitar el banner de "Debug"
      theme: ThemeData(
        tabBarTheme: const TabBarTheme(
          indicatorColor: Colors.pink,
        ),
      ),
    );
  }
}