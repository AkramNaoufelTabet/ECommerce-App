import 'package:ecommerce_app/screens/Login_success/Components/body.dart';
import 'package:flutter/material.dart';
class LoginSuccessScreen extends StatelessWidget {
  @override
  static String routename="/loginSuccess";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Login Success")
        ,),
    body: Body(),
    );
  }
}