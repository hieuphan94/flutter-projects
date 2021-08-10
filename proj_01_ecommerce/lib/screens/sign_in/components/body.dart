import 'package:flutter/material.dart';
import 'package:proj_01_ecommerce/components/no_account_text.dart';
import 'package:proj_01_ecommerce/components/social_card.dart';
import 'package:proj_01_ecommerce/constants.dart';
import 'package:proj_01_ecommerce/screens/sign_in/components/sign_in_form.dart';
import 'package:proj_01_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Container(
        child: SafeArea(
            child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Welcome",
                style: headingStyle,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Sign in with your email and password \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              SignInForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {
                      print("Google");
                    },
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {
                      print("Facebook");
                    },
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {
                      print("Twitter");
                    },
                  ),
                ],
              ),
              NoAccountText()
            ],
          ),
        )),
      ),
    );
  }
}
