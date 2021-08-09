import 'package:flutter/material.dart';
import 'package:proj_01_ecommerce/screens/splash/components/body.dart';
import 'package:proj_01_ecommerce/size_config.dart';

class SplashScreen extends StatelessWidget {
  // const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
