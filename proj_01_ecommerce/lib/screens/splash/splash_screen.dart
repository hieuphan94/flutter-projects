import 'package:flutter/material.dart';
import 'package:proj_01_ecommerce/screens/splash/components/body.dart';
import 'package:proj_01_ecommerce/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
