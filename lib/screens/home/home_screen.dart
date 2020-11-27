import 'package:ecommerce_app/screens/home/components/body.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  @override
  static String routename="/home";
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: Body(),
      
    );
  }
}