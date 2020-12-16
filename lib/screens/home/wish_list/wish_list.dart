
import 'package:ecommerce_app/screens/home/wish_list/Body.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
class WishList extends StatelessWidget {
  const WishList({
     Key key,
 this.function1,
 this.function2,
   }
    
  ):super(key: key);
  final Function function1;
  final Function function2;
  
  @override
  static String routename ="/wishList";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Wish list",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Body(updateBottomBar: function1,remove: function2,),
    );
  }
}