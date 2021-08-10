import 'package:flutter/material.dart';
import 'package:proj_01_ecommerce/routes.dart';
import 'package:proj_01_ecommerce/screens/splash/splash_screen.dart';
import 'package:proj_01_ecommerce/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
