import 'package:ecommerce_app/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';
class SignInScreen extends StatelessWidget {
  @override
  static String routename="/sign_in";
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: Text("Sign in",style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(child: Body()),
      
    );
  }
}