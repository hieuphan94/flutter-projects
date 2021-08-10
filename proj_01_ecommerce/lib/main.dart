import 'package:flutter/material.dart';
import 'package:proj_01_ecommerce/constants.dart';
import 'package:proj_01_ecommerce/routes.dart';
import 'package:proj_01_ecommerce/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Multi",
          appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0.0,
              brightness: Brightness.light,
              textTheme: TextTheme(
                  headline6: TextStyle(color: Colors.black87, fontSize: 18)),
              iconTheme: IconThemeData(color: Colors.black)),
          textTheme: TextTheme(
              bodyText1: TextStyle(color: kTextColor),
              bodyText2: TextStyle(color: kTextColor)),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
