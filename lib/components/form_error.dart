import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';
class FormErr extends StatelessWidget {
  const FormErr({
    Key key,
    this.error,
  }) : super(key: key);

  final String error;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:2.0,top:18),
      child:formErrtext(error)
    );
  }

  Row formErrtext(String error) {
    return Row(
          children: <Widget>[ error=="" ? SizedBox.shrink() :
            SvgPicture.asset("assets/icons/Error.svg",width:getProportionateScreenWidth(40) ,height: getProportionateScreenHeight(14),),
            SizedBox(width: getProportionateScreenWidth(10),),
            Flexible(child: Text(error))
          ],
        );
  }
}