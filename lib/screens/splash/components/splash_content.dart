import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';


class SplashContent extends StatelessWidget {
    const SplashContent ({
   Key key,
   this.text,
   this.image,

  }): super(key:key);

  final String text,image;
  @override
    Widget build(BuildContext context) {
    return Column(
              children: <Widget>[
                SizedBox(height: getProportionateScreenHeight(50),)
                ,Text("AlgBaba Express",
                style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryColor,fontSize: getProportionateScreenWidth(36)),),
                SizedBox(height: 50,),
                Image.asset(image,
                  width: getProportionateScreenWidth(235),
                  height: getProportionateScreenHeight(265),),
                   SizedBox(height: 40,),
                
                 Text(text,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black54 ),),
                
                
                
              ]
            );
  }
}