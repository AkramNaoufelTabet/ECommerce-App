import 'package:ecommerce_app/screens/home/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
class ProcudtCard extends StatelessWidget {
  
  const ProcudtCard({
    Key key, this.aspectRatio=0.7,
     this.width=120, 
      @required this.product,
  }) : super(key: key);
  final double aspectRatio,width;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:getProportionateScreenWidth(10)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
                         child: AspectRatio(
          aspectRatio: aspectRatio,
          child: Stack(
            children: <Widget>[
              Container(
                
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(12)

                   ) ,
                   child: Column(
      
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       Image.asset(product.images[0],
                       width: 100,
                       height: 90,
                       
                       ),

                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Center(
                            child: Text(product.title,
                               style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:12 ),
                               ),
                          ),
                        ), 
                         Padding(
                           padding:  EdgeInsets.symmetric(horizontal: 10  ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                                 Text("\$${product.price}",
                                 style: TextStyle(color: kPrimaryColor,fontSize: 12,fontWeight: FontWeight.bold),
                                 ),

                                 FavoriteIcon(product: product)

                           ],
                           
                           
                           ),
                         )

                     ],
                   ) ,
              ),
                if(product.reduction>0)
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
                       child: Text("-${product.reduction}%" ,
                       style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),
                       ),
                     ),
                   )
                   
                   
                   
                   )
            ],
          ),
          
          ),
      ),
    );
  }
}

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _FavoriteIconState createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  
  @override
  Widget build(BuildContext context) {
    return IconButton(  icon: widget.product.isFavourite ? Icon(Icons.favorite,color: kPrimaryColor,) : 
    Icon(Icons.favorite_border,color: kPrimaryColor,), 
    onPressed: (){
      setState(() {
        widget.product.isFavourite=!widget.product.isFavourite;
      });
    },

    
    );
  }
}
