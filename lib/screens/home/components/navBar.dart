import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/screens/home/wish_list/wish_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  int numOfItems=3;
  int _currentindex=0;
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
          setState(() {
            _currentindex= index;
          });
        },
      currentIndex:_currentindex ,
      unselectedItemColor: kSecondaryColor,

        items:  <BottomNavigationBarItem>[
          
     BottomNavigationBarItem(
       
       icon: Icon(Icons.home,size: getProportionateScreenWidth(30),),
       
       label: "",
       
     ),
     BottomNavigationBarItem(
       icon: Icon(Icons.favorite_border,size:getProportionateScreenWidth(30) ,),
       label: "",

       
     ),
     BottomNavigationBarItem(
       
         icon: Stack(
           overflow: Overflow.visible,
           children: [
             SvgPicture.asset("assets/icons/Cart Icon.svg",width: getProportionateScreenWidth(30),
             height:getProportionateScreenWidth(30) ,color: kSecondaryColor,),
               if(numOfItems!=0)
           Positioned(
             top: -5,
             right: -2,

                                  child: Container(
               width: getProportionateScreenWidth(16),
               height: getProportionateScreenWidth(16),
               decoration: BoxDecoration(
                 color: kPrimaryColor,
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
         label: "",
        
       
    ),
     
      BottomNavigationBarItem(
       icon: Icon(Icons.person_outline,size: getProportionateScreenWidth(30),),
       label: "",
       
       
     ),

        ],
        //currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,

        //onTap: _onItemTapped,
      );
  }
}