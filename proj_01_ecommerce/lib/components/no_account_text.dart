import 'package:flutter/material.dart';
import 'package:proj_01_ecommerce/constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        TextButton(
            onPressed: () {},
            child: Text(
              "Sign Up",
              style: TextStyle(fontSize: 16, color: kPrimaryColor),
            ))
      ],
    );
  }
}
