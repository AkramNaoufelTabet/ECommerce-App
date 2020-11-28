import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/screens/home/components/body.dart';
import 'package:ecommerce_app/screens/home/components/navBar.dart';
import 'package:flutter/material.dart';

import 'components/Homeheader.dart';
class HomeScreen extends StatelessWidget {
  @override
  static String routename="/home";
  
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        actions: <Widget>[
        HomeHeader(),

        ],
      ),
      body: Body(),
         bottomNavigationBar: BottomNavBar()
    );
  }
}

