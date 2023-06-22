
import 'package:flutter/material.dart';
import 'package:widgets/config/theme/app_theme.dart';
import 'package:widgets/presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 8).getTheme(),
      title: 'widgets',
      home: const HomeScreen(),
    );
  }
}