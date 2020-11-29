
import 'package:ecommerce_app/screens/home/wish_list/Body.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
class WishList extends StatelessWidget {
  @override
  static String routename ="/wishList";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Wish list",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Body(),
    );
  }
}