import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'iconbtnwithcounter.dart';
import 'searchfield.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: SizeConfig.screenWidth,
      height: 60,
      color: kPrimaryColor,
      child: Padding(
        padding: 
        EdgeInsets.symmetric(horizontal:getProportionateScreenWidth(12) ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
             SearchField(),
               //IconBtnwithCounter(svgsrc: "assets/icons/Cart Icon.svg", press: (){
               
             //}),
             IconBtnwithCounter(
               svgsrc: "assets/icons/Bell.svg",
               numOfItems: 3,
               press: (){},
             ),
           
             
        ],
      ),
      
      
      ),
    );
  }
}

