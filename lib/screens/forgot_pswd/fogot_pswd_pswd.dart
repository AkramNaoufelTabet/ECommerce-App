import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/forgot_pswd/components/Body2.dart';
class ForgotPswdPswd extends StatelessWidget {
  @override
  static String routename="/forgotPswdPswd";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Body2(),
    );
  }
}