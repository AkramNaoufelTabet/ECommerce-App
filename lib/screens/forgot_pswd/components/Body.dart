import 'package:ecommerce_app/components/form_error.dart';
import 'package:ecommerce_app/screens/register/register.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';


class Body extends StatelessWidget {
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
            Text("Please enter your e-mail and we will send\nyou a link to return your account",textAlign: TextAlign.center,),
            SizedBox(height: getProportionateScreenHeight(50),),
            ForgotPswdForm(),
            
          ],
        ),
      ),
    );
  }
}
class ForgotPswdForm extends StatefulWidget {
  @override
  _ForgotPswdFormState createState() => _ForgotPswdFormState();
}

class _ForgotPswdFormState extends State<ForgotPswdForm> {
  @override
   
     String email="";
    bool isEvalid=false;
    
      final eController = TextEditingController();
      String error="";
  final Mformkey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Form(
      key: Mformkey,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24.0)),
        child: Column(children: <Widget>[

          Theme(
            data: Theme.of(context).copyWith(primaryColor:kPrimaryColor ),
                      child: TextFormField(
                        controller: eController,
                        onSaved: (newvalue){
                          email=newvalue;
                        
                        },
                        onChanged: (value){
                            if(eController.text.isNotEmpty ){
                            setState(() {
                             error=""; 
                            });
                          }if(emailValidatorRegExp.hasMatch(eController.text) ){
                            setState(() {
                              isEvalid=true;
                              
                              error="";
                              
                            });
                          }
                        },
                        validator: (value){
                          if(eController.text.isEmpty ){
                            setState(() {
                              error=kEmailNullError;
                             
                            });
                          }else if(!emailValidatorRegExp.hasMatch(eController.text) ){
                            setState(() {
                              isEvalid=false;
                              error=kInvalidEmailError;
                           
                            });
                          }
                         
                        },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                icon: Icon(Icons.email,size: 28,),
                hintText: "Enter your email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: IconButton(icon: Icon(Icons.clear), onPressed: (){
                  setState(() {
                    eController.text="";
                  });
                }),
              
           
              ),
            ),
          ),
          
          FormErr(error: error,),
          SizedBox(height: SizeConfig.screenHeight*0.08,),


SizedBox(
  width: double.infinity,
  height: getProportionateScreenHeight(56),
  child:   Padding(
  
                                            padding: const EdgeInsets.only(left:2.0,right:2.0),
  
                                            child: FlatButton(onPressed: (){
  
                                               if(Mformkey.currentState.validate()){
  
                                               Mformkey.currentState.save();
  
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
                         text:"No Account? ",
                         style: TextStyle(color:Colors.black87),
                         children: <TextSpan>[
                            TextSpan(
                              text:"Register ",
                               style: TextStyle(color:  Colors.cyan[600]),
                               recognizer: TapGestureRecognizer()
                               ..onTap=(){
                                        Navigator.popAndPushNamed(context, RegisterScreen.routename);                               }

                            )
                         ]
                       ) ,)

        ],),
      ),
    );
  }
}