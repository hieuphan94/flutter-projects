import 'package:flutter/widgets.dart';
import 'package:proj_01_ecommerce/screens/sign-in/sign_in.dart';
import 'package:proj_01_ecommerce/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
