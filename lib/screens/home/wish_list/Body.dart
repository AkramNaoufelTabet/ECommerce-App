import 'package:ecommerce_app/screens/home/components/productcard.dart';
import 'package:ecommerce_app/screens/home/components/sectio_Title.dart';
import 'package:ecommerce_app/screens/home/models/product.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
class Body extends StatelessWidget {
  
  @override
  
  Widget build(BuildContext context) {
    return SafeArea(

      
        child:ListView.builder(
          itemCount: favProducts.length,
          itemBuilder:(BuildContext context,int index)=>
           BigCard(title: "null", press:(){},  lp: favProducts,index: index,)
          
          
          )


            
            

         

      
      
    );
  }
}


class BigCard extends StatelessWidget {
  const BigCard({
    Key key, 
    @required this.title, 
    @required this.press,
     
    @required this.index,
    @required this.lp,
  }) : super(key: key);
  final String title;
  final GestureTapCallback press;
  final List<Product> lp;
  final int index;
  
  
  @override
  Widget build(BuildContext context) {
    return WishListCart(product: lp[index]);
  }
}

class WishListCart extends StatefulWidget {
  const WishListCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _WishListCartState createState() => _WishListCartState();
}

class _WishListCartState extends State<WishListCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12,top: 12,bottom: 12),
      child: Container(
       
        
        width: double.infinity,
        height: 156,
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
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenWidth(10) ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                       Stack(
                         children: [
                           Container(

                              decoration: BoxDecoration(
                                 color: Colors.white,
                             borderRadius: BorderRadius.circular(12)
                              ),
                               child:  Image.asset(widget.product.images[0],
                               width: 100,
                               height: 120,
                               
                               ),
                            ),
                                            if(widget.product.reduction>0)
                 Positioned(
                   child: Container(
                     width: getProportionateScreenWidth(32),
                     height:getProportionateScreenWidth(20),
                     decoration: BoxDecoration(
                       color: kPrimaryColor,
                       borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                       topRight: Radius.circular(6),
                       bottomLeft: Radius.circular(0),
                       bottomRight: Radius.circular(6)
                       )
                     ),
                     child: Center(
                       child: Text("-${widget.product.reduction}%" ,
                       style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),
                       ),
                     ),
                   )
                   
                   
                   
                   )
                         ],
                       ),
                          Padding(
                            padding:  EdgeInsets.only(left:getProportionateScreenWidth(12)),
                            child: Column(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  Stack(
                                    overflow: Overflow.visible,
                                    children: [
                                     
                                          Text(widget.product.title,
                                                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:18 ),
                                                 ),
                                                  Positioned(
                                                   top: -20,
                                                   right: -100,
                                                   child: IconButton(icon: Icon(Icons.clear,color:kPrimaryColor), onPressed:(){
                                                      
                                                     setState(() {
                                                       Scaffold.of(context).showSnackBar(SnackBar(content: Text('hey')));
                                                       
                                                     });
                                                   }))
                                                
                                       
                                    ],
                                  ),
                                 

                                       Text("Quelques details....",maxLines: 3,
                                       style: TextStyle(color: Colors.black87,),
                                       ),

                                       SizedBox(height: getProportionateScreenWidth(32),),
                                        Text.rich(
                                     TextSpan( 
                                              children: [

                                             TextSpan(
                                               text:"\$3.43",style: TextStyle(color: kSecondaryColor,
                                              decoration: TextDecoration.lineThrough
                                              ),
                                             ),   
                                             
                                              
                                          TextSpan(
                                                  text:"      Reduction of 20%",
                                         style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold
                                          )
                                         ),
                                              ]
                                           )
                                                                             
                                           ),
                                       
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         
                                         children: [
                                           Text("\$2.74",
                                           style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold,
                                           fontSize: 18
                                           ),
                                           ),

                                           SizedBox(width: getProportionateScreenWidth(88),),

                                           FlatButton(onPressed: (
                                        ){
                                          // if(Mformkey.currentState.validate()){
                                          // Mformkey.currentState.save();
                                         //}
                                         
                                        },
                                        height:28 ,
                                         
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16)
                                          
                                          ),
                      color:kPrimaryColor,
                       child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:12)),),
                                         ],
                                       )
                                       
                                      
                                       
                                       
                               ],
                             ),
                          ),

                          
                         
                      
                 
              
            ],
          ),
        )),
    );
  }
}