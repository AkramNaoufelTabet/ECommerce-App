import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/screens/home/models/product.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../size_config.dart';
class Body extends StatefulWidget {
 
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 14,vertical: 20),
              child: Text("My Products :",
              
              style:TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold,fontSize: 18) ,
              ),
            ),
             Padding(
      padding:  EdgeInsets.only(left: 0),
      child:
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8),vertical: getProportionateScreenWidth(6)),
                      child: Container(
                        
                        height: 230,
                        child: Row(children: [
              ...List.generate(productsCart.length, (index) =>ProductCart(product: productsCart[index]) )
            ],),
                      ),
          )      
      ,
      ),

SizedBox(height: 16,),
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Divider(
          color: kSecondaryColor,
          
          thickness: 1,
        ),
      ),
      Padding(
              padding:  EdgeInsets.symmetric(horizontal: 14,vertical: 6),
              child: Text("Shipping details :",
              
              style:TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold,fontSize: 18) ,
              ),
            ),
             
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
               child: Container(
                 width: double.infinity,
                 height: 80,
                 decoration: BoxDecoration(
                   color: HexColor("#F3EEEE"),
                    borderRadius: BorderRadius.circular(28)
                 ),
                 child: Padding(
                   padding:  EdgeInsets.only(left: getProportionateScreenWidth(12),top: getProportionateScreenWidth(7)),
                   child: Column(
                    
                     children: [
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Ship to : ",
                           style:TextStyle(color: kPrimaryColor,
                           fontWeight: FontWeight.bold
                           ) ,
                           
                           ),
                        Text("Cooperative El Khiam,El Eulma,Sétif",
                        style:TextStyle(color: Colors.black,
                           fontWeight: FontWeight.bold
                        )),
                         ],
                       ),
                       SizedBox(height: getProportionateScreenWidth(8),),

                       FlatButton(
                         
                         onPressed: (
                                        ){
                              
                                        },
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      color:kPrimaryColor,
                       child: Text("Change adress",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:12)),)
                     ],
                   ),
                 ),
               ),
               
             )



        ],
      ) ,
      
      
      
    );
  }
}

// ignore: must_be_immutable
class ProductCart extends StatefulWidget {
   ProductCart({
    Key key,
    @required this.product,
 
    
    
  }) : super(key: key);

 

  
  final Product product;
   double totalPrice; 
  @override
  _ProductCartState createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  
  
  @override
  Widget build(BuildContext context) {
    widget.totalPrice=widget.product.price;
    
    return  Padding(
      padding:  EdgeInsets.only(left:8.0,right: 8),
      child: Container(
         
          
          width: 160,
          height: 222,
          decoration: BoxDecoration(
            color: HexColor("#F3EEEE"),
             borderRadius: BorderRadius.all(Radius.circular(12)),
                boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 4,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],


          ),
          child:Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenWidth(10) ), 
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  
                      Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(

                                      decoration: BoxDecoration(
                                         color: Colors.white,
                                     borderRadius: BorderRadius.circular(12)
                                      ),
                                       child:  Image.asset(widget.product.images[0],
                                       width: 90,
                                       height: 100,
                                       
                                       ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(left:8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 28,
                                            child: Stack(
                                              overflow: Overflow.visible,
                                              children: [

                                                Positioned(
                                                  top: -18,
                                                  right: -20,
                                                  
                                                  child: IconButton(icon: Icon(Icons.clear,color:kPrimaryColor), onPressed:(){
                                                                              
                                                                         
                                                                         }),
                                                ),
                                              ],
                                            ),
                                          ),
                                          if(widget.product.reduction>0)
                                           Container(
                     width: getProportionateScreenWidth(36),
                     height:getProportionateScreenWidth(20),
                     decoration: BoxDecoration(
                       color: kPrimaryColor,
                       borderRadius: BorderRadius.circular(12)
                       )
                     , 
                     
                     child: Center(
                
                       child: Text("-${widget.product.reduction}%" ,
                       style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),
                       ),
                     ),
                   ),
                   Padding(
                     padding:  EdgeInsets.only(top:getProportionateScreenWidth(8)),
                     child: Text("Final price",style: TextStyle(color: kSecondaryColor,fontSize: 8.7,fontWeight: FontWeight.bold),),
                   ),

                   Padding(
                     padding:  EdgeInsets.only(top:getProportionateScreenWidth(8)),
                     child: Text("\$${widget.product.price}",style: TextStyle(color: kPrimaryColor,fontSize: 12,fontWeight: FontWeight.bold),),
                   )
                                        ],
                                      ),
                                    )
                        ],
                      ),

                      Padding(
                        padding:  EdgeInsets.only(top:getProportionateScreenWidth(8)),
                        child: Text(widget.product.title,style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 13
                        
                        ),),


                      ),
                       Padding(
                         padding:  EdgeInsets.only(top:getProportionateScreenWidth(4)),
                         child: Text("Amount :",
                         style:TextStyle(color: kSecondaryColor,fontSize: 10,fontWeight: FontWeight.bold) ,),
                       )   ,
                      Padding(
                        padding:  EdgeInsets.only(top:4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          
                          children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    if(widget.product.amount!=1)
                                    widget.product.amount-=1;
                                  });
                                },
                                                              child: Container(
                                  width: getProportionateScreenWidth(24),
                                  height:getProportionateScreenWidth(22) ,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.all(
                                        color: kPrimaryColor,
                                        width: 1
                                      )
                                  ),
                                  child: Center(child: Text("-",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),)),
                                ),
                              ),
                                                        Container(
                     width: getProportionateScreenWidth(28),
                     height:getProportionateScreenWidth(20),
                     decoration: BoxDecoration(
                         color: kPrimaryColor,
                         borderRadius: BorderRadius.circular(8)
                         )
                     ,
                     child: Center(
                         child: Text("${widget.product.amount}" ,
                         style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),
                         ),
                     ),
                   ),
                     InkWell(
                       onTap: (){
                         setState(() {
                                    widget.product.amount+=1;
                                  });
                       },
                                            child: Container(
                                  width: getProportionateScreenWidth(24),
                                  height:getProportionateScreenWidth(22) ,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.all(
                                        color: kPrimaryColor,
                                        width: 1
                                      )
                                  ),
                                  child: Center(child: Text("+",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),)),
                                ),
                     ),

                        ],),
                      ),

                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
                        child: Divider(
                            color: kSecondaryColor,
                        ),
                      ),

                      Center(
                        child: Text.rich(
                          TextSpan(
                            text:"Total :  ",
                            style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text:"\$${double.parse((widget.totalPrice*widget.product.amount).toStringAsFixed(2))}",
                                
                                style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold),
                              )
                            ]
                          )
                        ),
                      )




                    ],
                  )
                             )
            
          
        ),
    );
  }
}