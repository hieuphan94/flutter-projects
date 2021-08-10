import 'package:flutter/material.dart';
import 'package:proj_01_ecommerce/constants.dart';

ThemeData theme() {
  return ThemeData(
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
      visualDensity: VisualDensity.adaptivePlatformDensity);
}
