import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(height: SizeConfig.screenHeight*0.08,),
      Image.asset("assets/images/success.png",height: SizeConfig.screenHeight*0.4,),
      SizedBox(height: SizeConfig.screenHeight*0.08,),
      Text("Login Sucess",
      style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: getProportionateScreenWidth(30)),
      ),
      SizedBox(height: SizeConfig.screenHeight*0.1,),
    Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
      child: SizedBox(
  width: double.infinity,
  height: getProportionateScreenHeight(56),
  child:   Padding(
  
                                              padding: const EdgeInsets.only(left:2.0,right:2.0),
  
                                              child: FlatButton(onPressed: (){
  
                                               
  
                                              },
  
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  
                            color:kPrimaryColor,
  
                             child: Text("CONTINUE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:16)),),
  
                                            ),
),
    ),
    ],
      
    );
  }
}