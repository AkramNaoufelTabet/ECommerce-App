import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/screens/home/Cart/productCart.dart';
import 'package:ecommerce_app/screens/home/models/product.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../size_config.dart';
import 'orderSum.dart';
class Body extends StatefulWidget {
 final Function remove;
 Body({
   @required this.remove,
 });
  @override
  _BodyState createState() => _BodyState();
}


class _BodyState extends State<Body> {
  
  
bool checked1=false;
bool checked2=true;
double shippingC=0;
String adresse="Cooperative El Khiam,El Eulma,Sétif";
TextEditingController adressController;

double allToPay;



    
    
  double calculeTotalP (){
  double totalP=0;
  for(var x=0 ; x<productsCart.length;x++){
      totalP+=(productsCart[x].price-productsCart[x].price*productsCart[x].reduction/100)*productsCart[x].amount;
      
  }

  return double.parse((totalP).toStringAsFixed(2));
}

 void decrement(Product p ){
     setState(() {
                                    
                                    if(p.amount!=1)
                                    p.amount-=1;
                                    
                                    
                                  });
 }
 void increment(Product p){
    setState(() {
                                    p.amount+=1;
                                    
                                    
                                  });
 }
 

@override
  void didChangeDependencies() {
    adressController = TextEditingController(text: adresse);
    super.didChangeDependencies();
  }
  void dispose() {
    adressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
       allToPay=double.parse((calculeTotalP()+shippingC).toStringAsFixed(2));

  Future<void> _showMyDialog(String adr) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Change adress'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              TextField(
                controller: adressController,
                
                decoration: InputDecoration(
                  
                  
                ),
                
              )
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            
            child: Text('Approve'),
            onPressed: () {
              setState(() {
                adresse=adressController.text;
              });
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

      
    

  
    return SafeArea(
      
      child: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 14,vertical: 10),
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
                ...List.generate(productsCart.length, (index) =>ProductCart(product: productsCart[index],remove: widget.remove,
                increment: increment,decrement: decrement,
                
                ) )
              ],),
                        ),
            )      
        ,
        ),

SizedBox(height: 0,),
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
                   height: 60,
                   decoration: BoxDecoration(
                     color: HexColor("#F3EEEE"),
                      borderRadius: BorderRadius.circular(28)
                   ),
                   child: Padding(
                     padding:  EdgeInsets.only(left: getProportionateScreenWidth(12),top: getProportionateScreenWidth(5)),
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
                          Text("$adresse",
                          style:TextStyle(color: Colors.black,
                             fontWeight: FontWeight.bold
                          )),
                           ],
                         ),
                         SizedBox(height: getProportionateScreenWidth(4),),

                         Container(
                           width: 140,
                           height: 28,
                           child: FlatButton(
                             
                             onPressed: (){
                                              _showMyDialog(adresse);
                                            },
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color:kPrimaryColor,
                           child: Text("Change adress",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:12)),),
                         )
                       ],
                     ),
                   ),
                 ),
                 
               ),

               Padding(
                 padding:  EdgeInsets.only(left:getProportionateScreenWidth(40),top: getProportionateScreenWidth(12)),
                 child: Row(children: [
                   Text("Express",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                   SizedBox(width: 70,),
                   Container(
                    
                     width: 48,
                     height: 18,
                     decoration: BoxDecoration(
                       
                       color: kPrimaryColor,
                       borderRadius: BorderRadius.circular(32)

                     ),
                     child: Center(child: Text("1 Day",style: TextStyle(fontSize: 12,color: Colors.white),)),
                   ),
                   SizedBox(width: 28,),
                   Container(
                    
                     width: 48,
                     height: 18,
                     decoration: BoxDecoration(
                       
                       color: kPrimaryColor,
                       borderRadius: BorderRadius.circular(32)

                     ),
                     child: Center(child: Text("\$5.0",style: TextStyle(fontSize: 12,color: Colors.white),)),
                   ),
                   SizedBox(width: 60,),
                   InkWell(
                     onTap: (){
                       setState(() {
                         shippingC=5;
                         checked1=true;
                         checked2=false;
                       });
                     },
                                      child: Container(
                       width: 20,
                       height: 20,
                       decoration: BoxDecoration(
                         border: Border.all(
                           color: kPrimaryColor, 

                         ),
                         borderRadius: BorderRadius.circular(4)

                       ),
                       child:  Center(child: checked1 ? FittedBox(child: Icon(Icons.check,color: kPrimaryColor,),fit: BoxFit.fill):  SizedBox.shrink())
                         ,
                     ),
                   )
                 ],),
               ),
               Padding(
                 padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),vertical: getProportionateScreenWidth(4)),
                 child: Divider(
                   color: kSecondaryColor,
                   thickness: 1,
                 ),
               ),
               Padding(
                 padding:  EdgeInsets.only(left:getProportionateScreenWidth(40),top: getProportionateScreenWidth(8)),
                 child: Row(children: [
                   Text("DZ post",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                   SizedBox(width: 70,),
                   Container(
                    
                     width: 48,
                     height: 18,
                     decoration: BoxDecoration(
                       
                       color: kPrimaryColor,
                       borderRadius: BorderRadius.circular(32)

                     ),
                     child: Center(child: Text("10 Days",style: TextStyle(fontSize: 12,color: Colors.white),)),
                   ),
                   SizedBox(width: 28,),
                   Container(
                    
                     width: 48,
                     height: 18,
                     decoration: BoxDecoration(
                       
                       color: kPrimaryColor,
                       borderRadius: BorderRadius.circular(32)

                     ),
                     child: Center(child: Text("free",style: TextStyle(fontSize: 12,color: Colors.white),)),
                   ),
                   SizedBox(width: 60,),
                   InkWell(
                     onTap: (){
                       setState(() {
                         shippingC=0;
                       
                         checked2=true;
                         checked1=false;
                         
                       });
                     },
                                      child: Container(
                       width: 20,
                       height: 20,
                       decoration: BoxDecoration(
                      
                         border: Border.all(
                           color: kPrimaryColor, 

                         ),
                         borderRadius: BorderRadius.circular(4)

                       ),
                       child:  Center(child: checked2 ? FittedBox(child: Icon(Icons.check,color: kPrimaryColor,),fit: BoxFit.fill):  SizedBox.shrink())
                         ,
                     ),
                   )
                 ],),
               ),

                
               OrderSum(totalP: calculeTotalP(), shippingC: shippingC, allToPay: allToPay),
               



          ],
        ),
      ) ,
      
      
      
    );
  }
}



