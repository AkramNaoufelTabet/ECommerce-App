
import 'package:ecommerce_app/screens/forgot_pswd/components/Body.dart';
import 'package:flutter/material.dart';
class ForgotPswd extends StatelessWidget {
  @override
  static String routename="/forgotpswd";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}