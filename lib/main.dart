import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app.dart';
import 'features/authentication/controllers_onboarding/onboarding_controller.dart';

void main() {
  Get.put(OnBoardingController());
  runApp(const CarterApp());
}



