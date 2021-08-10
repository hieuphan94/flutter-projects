import 'package:flutter/material.dart';
import 'package:proj_01_ecommerce/components/custom_surfix_icon.dart';
import 'package:proj_01_ecommerce/components/default_button.dart';
import 'package:proj_01_ecommerce/components/form_error.dart';
import 'package:proj_01_ecommerce/components/no_account_text.dart';
import 'package:proj_01_ecommerce/constants.dart';
import 'package:proj_01_ecommerce/size_config.dart';

class ForgotPassForm extends StatefulWidget {
  ForgotPassForm({Key key}) : super(key: key);

  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            FormError(errors: errors),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                }
              },
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            NoAccountText()
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/Mail.svg")),
    );
  }
}
