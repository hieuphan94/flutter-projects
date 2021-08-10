import 'package:flutter/material.dart';
import 'package:proj_01_ecommerce/components/default_button.dart';
import 'package:proj_01_ecommerce/constants.dart';
import 'package:proj_01_ecommerce/screens/splash/splash_screen.dart';
import 'package:proj_01_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Text(
          "Login Success",
          style: headingStyle,
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back To Home",
            press: () {
              Navigator.popAndPushNamed(context, SplashScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
