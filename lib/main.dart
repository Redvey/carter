import 'package:carter/features/authentication/screens/screens_onboarding/onboarding_screen.dart';
import 'package:carter/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CarterApp());
}

class CarterApp extends StatelessWidget {
  const CarterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: OnboardingScreen()
    );
  }
}

