import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
class IconBtnwithCounter extends StatelessWidget {
  const IconBtnwithCounter({
    Key key,
     @required this.svgsrc, 
     @required this.press,
      this.numOfItems=0,
  }) : super(key: key);

  final String svgsrc;
  final GestureTapCallback press;
  final int numOfItems;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:press,
      borderRadius: BorderRadius.circular(50),
                      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            width: getProportionateScreenWidth(46),
            height: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle,
                
            ),
            child: SvgPicture.asset(svgsrc,color: kPrimaryColor,),
          ),
          if(numOfItems!=0)
           Positioned(
             top: -3,
             right: 0,

                                  child: Container(
               width: getProportionateScreenWidth(16),
               height: getProportionateScreenWidth(16),
               decoration: BoxDecoration(
                 color: Color(0xffff4848),
                 shape:BoxShape.circle,
                 border: Border.all(width: 1.5,color: Colors.white),
               ),
               child: Center(
                 child: Text("$numOfItems",style: TextStyle(
                   color: Colors.white,
                   fontSize: getProportionateScreenWidth(8),
                   height: 1,
                   fontWeight: FontWeight.w600),
                   ),
               ),
             ),
           )
        ],
      ),
    );
  }
}