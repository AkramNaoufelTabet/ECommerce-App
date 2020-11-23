import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';
class DefaultButton extends StatelessWidget {
   bool delete=false;
   DefaultButton({
      Key key ,
      this.text1,
      this.text2,
      this.press1,
      this.press2,
      this.currentpage
  
      
  }):super(key:key);
  final String text1;
  final String text2;
  final Function press1;
  final Function press2;
  final int currentpage;
   
  @override
  Widget build(BuildContext context) {
     return Padding(
                padding: const EdgeInsets.only(top: 56,right: 30,left: 30),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(56),
                                      child: currentpage==2 ? SizedBox.shrink() :  FlatButton(onPressed: press1,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      color:Colors.grey[200],
                       child: Text(text1,style: TextStyle(fontFamily: "Roboto",color: Colors.black,fontWeight: FontWeight.bold)),),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(top:10.0),
                       child: SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(56),
                                        child: FlatButton(onPressed: press2,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        color:kPrimaryColor,
                         child: Text(text2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),),
                       ),
                     )
                  ],
                ),
              );
  }
}