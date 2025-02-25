import 'package:carter/common/styles/spacing_styles.dart';
import 'package:carter/common/widgets_login/footer_icons.dart';
import 'package:carter/common/widgets_login/form_divider.dart';
import 'package:carter/common/widgets_login/login_form.dart';
import 'package:carter/common/widgets_login/login_header.dart';
import 'package:carter/utils/constants/sizes.dart';
import 'package:carter/utils/constants/text_strings.dart';
import 'package:carter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CarterHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CarterSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo,title,subtitle
              LogoTitleSection(dark: dark),

              ///Form
              SignInCreate(),

              ///Divider
              EDivider(dark: dark,dividerText: CarterTexts.orSignInWith,),
              const SizedBox(height: CarterSizes.spaceBtwSections,),
              ///Footer
              FooterIcons()
            ],
          ),
        ),
      ),
    );
  }
}







