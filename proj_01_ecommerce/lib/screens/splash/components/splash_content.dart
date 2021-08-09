import 'package:flutter/material.dart';
import 'package:proj_01_ecommerce/constants.dart';
import 'package:proj_01_ecommerce/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Spacer(),
                Text(
                  "TOKOTO",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenHeight(36)),
                ),
                Text(text),
                Spacer(
                  flex: 2,
                ),
                Image.asset(
                  image,
                  width: getProportionateScreenWidth(265),
                  height: getProportionateScreenHeight(235),
                )
              ],
            )),
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
            ))
      ],
    );
  }
}
