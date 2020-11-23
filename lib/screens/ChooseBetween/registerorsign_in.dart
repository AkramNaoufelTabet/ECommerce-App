import 'dart:ui';

import 'package:ecommerce_app/screens/register/register.dart';
import 'package:ecommerce_app/screens/sign_in/sign_in.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
class RegisterOrSignInScreen extends StatelessWidget {
  @override
    static String routename="/registerOrsign_in";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
          body: SafeArea(
        
        child: SizedBox(width:double.infinity,
        child: Column(children: <Widget>[
          SizedBox(height: getProportionateScreenHeight(50),),
            RichText(
              text: TextSpan(
                           text:"Alg",
                    style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xffffb300) ,fontSize: getProportionateScreenWidth(36)),
                     children: <TextSpan>[
                       TextSpan(
                         text: "Express",style: TextStyle(fontWeight: FontWeight.bold,color:kPrimaryColor ,fontSize: getProportionateScreenWidth(36))
                       )
                     ]
                    ),
            ),
                  Text("Smarter Shopping Better Living!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: getProportionateScreenWidth(10)),),
          SizedBox(height: getProportionateScreenHeight(380),),
           SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(56),
                                      child:  Padding(
                                        padding: const EdgeInsets.only(left:22.0,right:22.0),
                                        child: FlatButton(onPressed: (
                                        ){
                                          Navigator.pushNamed(context, RegisterScreen.routename);
                                        },
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      color:kPrimaryColor,
                       child: Text("REGISTER",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:16)),),
                                      ),
                                      
                    ),

                      Padding(
                       padding: const EdgeInsets.only(top:10.0,left: 22.0,right: 22.0),
                       child: SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(56),
                                        child: FlatButton(onPressed: (){
                                          Navigator.pushNamed(context, SignInScreen.routename);
                                        },
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        color:Colors.deepOrangeAccent.withOpacity(0.1),
                         child: Text("SIGN IN",style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold,fontSize: 16)),),
                       ),
                     ),
                     SizedBox(height: getProportionateScreenHeight(36),),
                     Text("Or Sign in with",textAlign: TextAlign.center,style: TextStyle(fontSize: 13, ),),
                     SizedBox(height: getProportionateScreenHeight(20),),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Image.asset("assets/images/googlelogo.png",width: 40,height: 40,),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0,right: 20),
                          child: Image.asset("assets/images/fblogo.png",width: 60,height: 60,),
                        ),
                        Image.asset("assets/images/twitterlogo.png",width: 40,height: 40,),
                      

                     ],)


        ],),
        ),
      ),
    );
  }
}