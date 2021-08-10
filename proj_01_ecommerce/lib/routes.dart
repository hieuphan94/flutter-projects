import 'package:flutter/widgets.dart';
import 'package:proj_01_ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:proj_01_ecommerce/screens/login_success/login_sucess_screen.dart';
import 'package:proj_01_ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:proj_01_ecommerce/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
};
