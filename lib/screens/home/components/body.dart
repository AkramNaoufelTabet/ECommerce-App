

import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/screens/home/components/sectio_Title.dart';
import 'package:ecommerce_app/screens/home/models/product.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';

import 'iconbtns.dart';

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
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 12),
           child: Container(
            
             
             width: double.infinity,
             height: 240,
             decoration: BoxDecoration(
               color: HexColor("#F3EEEE"),
                borderRadius: BorderRadius.all(Radius.circular(20)),
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
                   child: SectionTitle(title: "New arrival product ",press: (){},),
                 ),
                 SizedBox(height: getProportionateScreenWidth(10),),
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                                    child: Row(
                                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       ...List.generate(demoProducts.length, (index) => ProcudtCard(product: demoProducts[index]))
                     ],
                   ),
                 )
               ],
             )),
         )
         
 

          

       ],),
     )  , 
    );
  }
}

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
          child: Container(
            
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(20)

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

                             IconButton(  icon:  Icon(Icons.favorite,color: kPrimaryColor,  ), 
                             onPressed: (){
                               
                             },
                             
                             )

                       ],
                       
                       
                       ),
                     )

                 ],
               ) ,
          ),
          
          ),
      ),
    );
  }
}





class BuildSlashImages extends StatefulWidget {
  @override
  _BuildSlashImagesState createState() => _BuildSlashImagesState();
}

class _BuildSlashImagesState extends State<BuildSlashImages> {
 
 
 int Currentpage=0;
   final _controller = new PageController();
  
  List<String> srcimg=["assets/images/img.jpg",
  "assets/images/img1.jpg",
  "assets/images/img2.png",
  "assets/images/img3.png"
  
  ];
  @override

  
  
  Widget build(BuildContext context) {
    
    return      Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 190,
          child: PageView.builder(
            controller: _controller,
              onPageChanged:(value) {
                  setState(() {
                    Currentpage=value;
                  });
                },
                itemCount: srcimg.length,

            itemBuilder: (context,index)=>Column(
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(srcimg[index],
                            fit:BoxFit.fill ,
                            
                          width: SizeConfig.screenWidth,
                          height: getProportionateScreenHeight(150),),
                  ),
                ),
                      
                      SizedBox(height: SizeConfig.screenHeight*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(srcimg.length, (index) => buildDot(index)),
                ),
              ],
            ),
                   
            
            
            
            ),
        ),
      ],
    );
  
  } 
   AnimatedContainer buildDot(int index) {
    return AnimatedContainer( 
      width:Currentpage==index ? 15 : 8,
      height: 8,
      margin: EdgeInsets.only(right:5),
      duration: kAnimationDuration,
              
              decoration:BoxDecoration(color:Currentpage==index ?  kPrimaryColor :Color(0xFFD8D8D8),borderRadius: BorderRadius.circular(5)  ),);
  }

}
 


