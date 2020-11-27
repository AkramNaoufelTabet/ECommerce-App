import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth*0.8,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24)
      ),
      child: TextField(
        textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: "Search product",
        hintStyle: TextStyle(color:kSecondaryColor.withOpacity(0.4)),
        
        
        prefixIcon: Icon(Icons.search,color: kPrimaryColor,),
        contentPadding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(12))
      ),
      ),
    );
  }
}

