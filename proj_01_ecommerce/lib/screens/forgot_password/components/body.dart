import 'package:flutter/material.dart';
import 'package:proj_01_ecommerce/constants.dart';
import 'package:proj_01_ecommerce/screens/forgot_password/components/forgot_pass_form.dart';
import 'package:proj_01_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Container(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Forgot Password",
                style: headingStyle,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                  "Please enter your email and we will send \n you a link to return to your accounts"),
              ForgotPassForm()
            ],
          ),
        ),
      ),
    );
  }
}
