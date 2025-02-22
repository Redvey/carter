import 'package:carter/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarterApp());
}

class CarterApp extends StatelessWidget {
  const CarterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: Scaffold(
        backgroundColor: Colors.amber,
      ),
    );
  }
}

