
import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Homeheader.dart';

class Body extends StatelessWidget {
  @override
  
  static const IconData grid_view = IconData(0xe79c, fontFamily: 'MaterialIcons');
  Widget build(BuildContext context) {
    return SafeArea
    (
     child: SingleChildScrollView(
       child: Column(
         children: <Widget>[
           

         HomeHeader(),
         SizedBox(height:getProportionateScreenWidth(10) ),
         BuildSlashImages(),
   

       ],),
     )  , 
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
          height: 500,
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
                      
                      SizedBox(height: SizeConfig.screenHeight*0.04,),
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
 


