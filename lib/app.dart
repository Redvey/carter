import 'package:carter/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'features/authentication/screens/screens_onboarding/onboarding_screen.dart';


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
        home: OnBoardingScreen()
    );
  }
}