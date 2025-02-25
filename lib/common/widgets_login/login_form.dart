import 'package:carter/common/bottomnavigationbar.dart';
import 'package:carter/utils/constants/sizes.dart';
import 'package:carter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignInCreate extends StatelessWidget {
  const SignInCreate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: CarterSizes.spaceBtwItems),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.personalcard),
              labelText: CarterTexts.email,
            ),
          ),
          const SizedBox(
            height: CarterSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: CarterTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: CarterSizes.spaceBtwInputFields / 2,
          ),

          ///Remember me
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(CarterTexts.rememberMe)
                ],
              ),
              TextButton(
                  onPressed: () {}, child: Text(CarterTexts.forgetPassword)),//ForgetPassword
            ],
          ),
          const SizedBox(
            height: CarterSizes.spaceBtwSections,
          ),

          ///signin button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const BottomNavBar()),
              child: const Text(CarterTexts.signIn),
            ),
          ),
          const SizedBox(
            height: CarterSizes.spaceBtwItems,
          ),

          ///create account button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {},
                  // onPressed: () => Get.to(() => const SignUpScreen()),
                  child: Text(CarterTexts.createAccount))),
          const SizedBox(
            height: CarterSizes.spaceBtwSections,
          )
        ],
      ),
    ));
  }
}
