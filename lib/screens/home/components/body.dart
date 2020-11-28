

import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/screens/home/components/sectio_Title.dart';
import 'package:ecommerce_app/screens/home/models/product.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';

import 'iconbtns.dart';
import 'productcard.dart';
import 'slashImages.dart';
import 'specialoffers.dart';

class Body extends StatelessWidget {
   final _controller = new PageController();
  List<Map<String,dynamic>> IcnBtn =[
    //{"color":Colors.white,"icon":Icons.pause,"press":(){}},
    {"color":Colors.red[900],"icon":Icons.pause,"press":(){}},
    {"color":Colors.amberAccent,"icon":Icons.pause,"press":(){}},
    {"color":Colors.tealAccent[400],"icon":Icons.pause,"press":(){}},
    {"color":Colors.pinkAccent,"icon":Icons.pause,"press":(){}},
    {"color":Colors.lightGreenAccent[700],"icon":Icons.pause,"press":(){}},


  ];
  @override
  
  
  static const IconData grid_view = IconData(0xe79c, fontFamily: 'MaterialIcons');
  
  Widget build(BuildContext context) {
    return SafeArea
    (
     child: SingleChildScrollView(
       child: Column(
         children: <Widget>[
           

         IconButtons(IcnBtn: IcnBtn),
         
         SizedBox(height:getProportionateScreenWidth(10) ),
         BuildSlashImages(),
         BigCard(title: "New arrival product",
         press:(){} ,
         lp: demoProducts,
         ),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: 12,vertical: 10),
           child: SectionTitle(title: "Special for you",press:(){}),
         ),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
                    child: Row(
             children: <Widget>[

               SpecialOfferCard(image: "assets/images/Image Banner 2.png",
               category: "Smartphone",
               numOfbrand: 24,
               press: (){
                 
               },
               
               ),
                 SpecialOfferCard(image: "assets/images/Image Banner 3.png",
               category: "Fashion",
               numOfbrand: 36,
               press: (){
                 
               },
               
               
               ),
               SizedBox(width: getProportionateScreenWidth(12),)
             ],
           ),
         ),
         Padding(
           padding:  EdgeInsets.symmetric(vertical: 12),
           child: BigCard(title: "Weekly offers", press: (){}, lp: demoProducts),
         ),
         
         
 

          

       ],),
     )  , 
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    Key key, 
    @required this.title, 
    @required this.press,
    @required this.lp,
  }) : super(key: key);
  final String title;
  final GestureTapCallback press;
  final List<Product> lp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
       
        
        width: double.infinity,
        height: 240,
        decoration: BoxDecoration(
          color: HexColor("#F3EEEE"),
           borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],


        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              child: SectionTitle(title: "$title",press: press,),
            ),
            SizedBox(height: getProportionateScreenWidth(10),),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                               child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ...List.generate(lp.length, (index) => ProcudtCard(product: lp[index]))
                ],
              ),
            )
          ],
        )),
    );
  }
}








 


