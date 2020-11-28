import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
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

                            child: Stack(
                              children: [
                                Image.asset(srcimg[index],
                                fit:BoxFit.fill ,
                                
                          width: SizeConfig.screenWidth,
                          height: getProportionateScreenHeight(150),),
                              Container(
                   decoration: BoxDecoration(
                     gradient: LinearGradient(
                       begin: Alignment.topCenter,
                       end: Alignment.bottomCenter,
                       colors: [
                       Colors.black.withOpacity(0.4),
                       Color(0xff343434).withOpacity(0.15),



                     ])
                   ),
                 ) ,
                              ],
                            ),
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