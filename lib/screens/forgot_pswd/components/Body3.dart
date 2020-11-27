import 'package:ecommerce_app/components/form_error.dart';
import 'package:ecommerce_app/screens/register/register.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../fogot_pswd_pswd.dart';


class Body3 extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: SizedBox(
        width: double.infinity,
            child: Column(
          children: <Widget>[
            SizedBox(height: SizeConfig.screenHeight*0.12,),
            Text("New Password",
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: getProportionateScreenWidth(28)),
            
            ),
           
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
   
     String pswd="";
     String c_pswd="";
    bool isEvalid=false;
    
      final eController = TextEditingController();
      final pController=TextEditingController();
      String error="";
      bool _showPassword=false;
      bool _showPassword2=false;
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
                              pswd=newvalue;
                            
                            },
                           
                            validator: (value){
                         if(eController.text.trim().isEmpty){
                           return 'please enter your password';
                         }else{
                           return null;
                         }
                             
                            },
                  obscureText: !this._showPassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    icon: Icon(Icons.lock,size: 28,),
                    hintText: "Enter your password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                              suffixIcon: IconButton(
              icon: Icon(
                this._showPassword ? Icons.remove_red_eye : Icons.visibility_off, 
            color: this._showPassword ? kPrimaryColor : Colors.grey,
          ),
          onPressed: () {
            setState(() => this._showPassword = !this._showPassword );
          },
        ),
              
           
              ),
            ),
          ),
    
    
      Padding(padding: EdgeInsets.symmetric(vertical: 12)),

          Theme(
                data: Theme.of(context).copyWith(primaryColor:kPrimaryColor ),
                          child: TextFormField(
                            controller: pController,
                            onSaved: (newvalue){
                              c_pswd=newvalue;
                            
                            },
                           
                            validator: (value){
                              if(eController.text.trim().isNotEmpty ){
                                if(pController.text.trim().isEmpty || eController.text.trim()!=pController.text.trim() ){
                                  return "Please Confirm your password";
                                }else {
                                    return null;
                                }
                              }
                             
                            },
                  obscureText: !this._showPassword2,
                  decoration: InputDecoration(
                    labelText: "Confirm password",
                    icon: Icon(Icons.lock,size: 28,),
                    hintText: "Confirm your password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                              suffixIcon: IconButton(
              icon: Icon(
                this._showPassword2 ? Icons.remove_red_eye : Icons.visibility_off, 
            color: this._showPassword2 ? kPrimaryColor : Colors.grey,
          ),
          onPressed: () {
            setState(() => this._showPassword2 = !this._showPassword2 );
          },
        ),
              
           
              ),
            ),
          ),
          
          
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