import 'package:ecommerce_app/components/form_error.dart';
import 'package:ecommerce_app/screens/forgot_pswd/newpswd.dart';
import 'package:ecommerce_app/screens/register/register.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../fogot_pswd_pswd.dart';


class Body2 extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: SizedBox(
        width: double.infinity,
            child: Column(
          children: <Widget>[
            SizedBox(height: SizeConfig.screenHeight*0.12,),
            Text("Forgot Password",
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: getProportionateScreenWidth(28)),
            
            ),
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: 24,vertical: 16),
               child: RichText(
                 textAlign: TextAlign.center,
                          text:TextSpan(
                          
                            text:"Check your inbox,enter the verification code\n to enter your new password,if you haven't received anything ",
                            style: TextStyle(color: Color(0xFF757575)),
    
                            children: <TextSpan>[
                              TextSpan(
                                text:"click here.",
                                style: TextStyle(color: Colors.cyan[600]),
                              ),
                           
                            ]
                          ) ,
                          ),

                          
             ),
             buildTimer(),
          
            SizedBox(height: getProportionateScreenHeight(50),),
            ForgotPswdForm(),
            
            
          ],
        ),
      ),
    );
  }
  
   Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0.0),
          duration: Duration(seconds: 60),
          builder: (_, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
class ForgotPswdForm extends StatefulWidget {
  @override
  _ForgotPswdFormState createState() => _ForgotPswdFormState();
}

class _ForgotPswdFormState extends State<ForgotPswdForm> {
  @override
   
     String code="";
    bool isEvalid=false;
    
      FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }
      final eController = TextEditingController();
      String error="";
  final Mformkey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Form(
      key: Mformkey,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24.0)),
        child: Column(children: <Widget>[

                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         SizedBox(
                width: getProportionateScreenWidth(50),
                child: TextFormField(
                  autofocus: true,
                  
                  style: TextStyle(fontSize: 20),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),
                       
              SizedBox(
                width: getProportionateScreenWidth(50),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  
                  style: TextStyle(fontSize: 20),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin3FocusNode),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(50),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  
                  style: TextStyle(fontSize: 20),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin4FocusNode),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(50),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  
                  style: TextStyle(fontSize: 20),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FocusNode.unfocus();
                      // Then you need to check is the code is correct or not
                    }
                  },
                ),
              ),
          ],
                     ),
          
          SizedBox(height: SizeConfig.screenHeight*0.06,),

            GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: Text(
                  "Resend the Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight*0.06,),

SizedBox(
  width: double.infinity,
  height: getProportionateScreenHeight(56),
  child:   Padding(
  
                                            padding: const EdgeInsets.only(left:2.0,right:2.0),
  
                                            child: FlatButton(onPressed: (){
  
                                               if(Mformkey.currentState.validate()){
  
                                               Mformkey.currentState.save();

                                               Navigator.pushNamed(context, NewPswd.routename);
                                               
  
                                             }
  
                                            },
  
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  
                          color:kPrimaryColor,
  
                           child: Text("CONTINUE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:16)),),
  
                                          ),
),

 SizedBox(height: getProportionateScreenHeight(36),),
                     RichText(
                       text:TextSpan(
                         text:"you have a problem ? ",
                         style: TextStyle(color:Colors.black87),
                         children: <TextSpan>[
                            TextSpan(
                              text:"Click here ",
                               style: TextStyle(color:  Colors.cyan[600]),
                               recognizer: TapGestureRecognizer()
                               ..onTap=(){
                                                                       }

                            )
                         ]
                       ) ,)

        ],),
      ),
    );
  }


}