import 'package:ecommerce_app/screens/register/components/body.dart';
import 'package:flutter/material.dart';
class RegisterScreen extends StatelessWidget {
  static String routename="/register";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Register",style: TextStyle(fontWeight: FontWeight.bold),),
      
      ),
      body: SingleChildScrollView(
        child: Body()),
    );
  }
}