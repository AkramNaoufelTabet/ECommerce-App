import 'package:ecommerce_app/screens/home/Cart/Body.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
class Mycart extends StatelessWidget {
 Mycart({ this.function1});
  static String routename="/MyCart";
    final Function function1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Body(remove: function1,),

      
    );
  }
}