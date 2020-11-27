import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
class IconButtons extends StatelessWidget {
  const IconButtons({
    Key key,
    @required this.IcnBtn,
  }) : super(key: key);

  final List<Map<String,dynamic >> IcnBtn;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.screenHeight*0.09,
       color: kPrimaryColor,
       
                     child: SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                                                 child: Row(

           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.center,
children: <Widget>[
  ...List.generate( IcnBtn.length, (index) => CircleBtnIcn(press: IcnBtn[index]["press"], icon: IcnBtn[index]["icon"], color: IcnBtn[index]["color"]))
],
             
           ),
                     ),
       

    );
  }

}

class CircleBtnIcn extends StatelessWidget {
  const CircleBtnIcn({
    Key key, 
   @required this.press, 
    @required this.icon, 
     @required this.color,
  }) : super(key: key);
  final Function press;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      
  onPressed: press,
  elevation: 2.0,
  fillColor: color,
  child: Icon(
    icon,
    size: 20.0,
  ),
  padding: EdgeInsets.all(15.0),
  shape: CircleBorder(),
);
  }
}