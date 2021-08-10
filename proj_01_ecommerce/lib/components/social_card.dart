import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proj_01_ecommerce/size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key,
    @required this.icon,
    @required this.press,
  }) : super(key: key);
  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        width: getProportionateScreenHeight(40),
        height: getProportionateScreenHeight(40),
        decoration:
            BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
