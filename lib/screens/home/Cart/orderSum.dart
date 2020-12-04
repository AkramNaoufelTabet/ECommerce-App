import 'package:ecommerce_app/screens/home/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
class OrderSum extends StatelessWidget {
  const OrderSum({
    Key key,
    @required this.totalP,
    @required this.shippingC,
    @required this.allToPay,
  }) : super(key: key);

  final double totalP;
  final double shippingC;
  final double allToPay;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(12),vertical: getProportionateScreenWidth(8)),
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(24)
        ),
        child: Column(children: [
          Padding(
            padding:  EdgeInsets.only(top:8),
            child: Center(child: Text("Order Summary",
            style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
            ),),
          ),
          
          ArticleW(price:totalP ,text: "Total articles",),
          Padding(
            padding:  EdgeInsets.only(left:16,right: 16),
            child: Divider(color: Colors.white,thickness: 1,),
          ),
          ArticleW(price:shippingC ,text: "shipping costs",),
           Padding(
            padding:  EdgeInsets.only(left:16,right: 16),
            child: Divider(color: Colors.white,thickness: 1,),
          ),
          Padding(
            padding:  EdgeInsets.only(left:16.0),
            child: ArticleW(text:"Total to pay",price:allToPay ,),
          ),
          InkWell(
            onTap: (){
              print(productsCart.length);
            },
            
                                 child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(132),vertical: getProportionateScreenWidth(8)),
              child: Container(
                height: 24,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("Check out >",
                style: TextStyle(fontWeight: FontWeight.bold,color: kSecondaryColor),
                ),),
              ),
            ),
          )
        ],),
      ),
    );
  }
}
class ArticleW extends StatelessWidget {
  const ArticleW({
    Key key, 
    this.text,
     this.price,
  }) : super(key: key);
  final String text;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:6,left: 16,right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$text",
          style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
          ),
          Text("\$$price",
          style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

