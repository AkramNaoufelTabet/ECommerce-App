
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
import '../signInForm.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  SizedBox(width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24.0)),
        child: Column(children: <Widget>[
          SizedBox(height: getProportionateScreenHeight(55),),
            Text("Logo Space",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 28),),
             Padding(
               padding: const EdgeInsets.only(top:18.0),
               child: Text("Sign in",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 18),),
             ),
            SignInForm(),
        ]
        )
      )
      )
    );
  }
}

