import 'package:ecommerce_app/screens/home/Cart/Body.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
class Mycart extends StatelessWidget {
  static String routename="/MyCart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Body(),

      
    );
  }
}