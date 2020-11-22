import 'package:ecommerce_app/components/default_button.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/screens/sign_in/sign_in.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import '../components/splash_content.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
int Currentpage=0;
  List<Map<String,String>> SplashData=[
{
        "text": "Welcome to AlgBaba,\nBrowse for the store you need nearby",
      "image": "assets/images/splash_2.png"
    },
    {
      "text":
          "Choose your products  \nSelect your products and fill your basket ",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We show the easy way to shop \nGet your order delivred to your home",
      "image": "assets/images/splash_3.png"
    }



  ];
  final _controller = new PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: SizedBox(
            width: double.infinity,
                      child: Column(
        children: <Widget>[
            Container(width: double.infinity,
            height: 500,
              
              child: PageView.builder(
                 controller: _controller,
                onPageChanged:(value) {
                  setState(() {
                    Currentpage=value;
                  });
                },
                itemCount: SplashData.length,
                itemBuilder:(context, index) => SplashContent(text:SplashData[index]['text'] ,
            image: SplashData[index]['image']), )
            
            
            ),
            
              
               Column(
              children: <Widget>[
               SizedBox(height:60 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(SplashData.length, (index) => buildDot(index)),
                ),
                DefaultButton(text1: "Next",press1: (){
                  _controller.nextPage(duration: Duration(milliseconds: 300), curve: kCurve);
                  
                },text2: "Connect",press2: (){
                  Navigator.pushNamed(context, SignInScreen.routename);
                },currentpage: Currentpage, )
              ],
            ),
            
        ],
      ),
          ),
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

